require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject

  def self.columns
    sql_query = DBConnection.execute2(<<-SQL)
      SELECT
        *
      FROM
        #{table_name}
    SQL

    column_symbols = []
    sql_query.first.each do |column_name|
      column_symbols << column_name.to_sym
    end
    column_symbols


  end

  def self.finalize!
    columns.each do |column_name|

      define_method(column_name) do
        attributes[column_name]
      end

      define_method("#{column_name}=") do |value|
        attributes[column_name] = value
      end
    end
  end

  def self.table_name=(table_name)
    instance_variable_set("@table_name", table_name)
  end

  def self.table_name
    @table_name ||= "#{self}".downcase.pluralize
  end

  def self.all
    all = DBConnection.execute(<<-SQL)
      SELECT
        #{table_name}.*
      FROM
        #{table_name};
    SQL
    self.parse_all(all)
  end

  def self.parse_all(results)
    objects = []
    results.each do |attributes_hash|
      objects << self.new(attributes_hash)
    end
    objects

  end

  def self.find(id)
    object = DBConnection.execute(<<-SQL, id)
      SELECT
        #{table_name}.*
      FROM
        #{table_name}
      WHERE
        id = ?
    SQL
    if object == []
      nil
    else
      self.new(object.first)
    end
  end

  def initialize(params = {})
    params.each do |key, value|
      attribute = key.to_sym
      raise "unknown attribute '#{attribute}'" unless self.class.columns.include?(attribute)
      self.send("#{attribute}=", value)
    end

  end

  def attributes
    @attributes ||= {}
  end

  def attribute_values
    values = []
    self.class.columns.map do |column|
      values << attributes[column]
    end

    values
  end

  def insert
    col_names = self.class.columns.join(", ")
    question_marks = (["?"] * (self.class.columns.count)).join(", ")
    DBConnection.execute(<<-SQL, self.attribute_values)
      INSERT INTO
        #{self.class.table_name} (#{col_names})
      VALUES
      (#{question_marks})
    SQL

    self.attributes[:id] = DBConnection.last_insert_row_id
  end

  def update
    set_columns = self.class.columns.map do |column_name|
      "#{column_name} = ?"
    end.join(", ")

    DBConnection.execute(<<-SQL, *self.attribute_values, self.id)
      UPDATE
        #{self.class.table_name}
      SET
        #{set_columns}
      WHERE
        id = ?
    SQL
  end

  def save
    if id.nil?
      self.insert
    else
      self.update
    end

  end
end
