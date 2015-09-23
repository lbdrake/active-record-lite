require_relative '02_searchable'
require 'active_support/inflector'

class AssocOptions
  attr_accessor(
    :foreign_key,
    :class_name,
    :primary_key
  )

  def model_class
    self.class_name.constantize
  end

  def table_name
    self.model_class.table_name
  end
end

class BelongsToOptions < AssocOptions
  def initialize(name, options = {})
    options[:foreign_key] ||= "#{name}_id".to_sym
    @foreign_key = options[:foreign_key]

    options[:primary_key] ||= :id
    @primary_key = options[:primary_key]

    options[:class_name] ||= name.to_s.camelcase.singularize
    @class_name = options[:class_name]
  end
end

class HasManyOptions < AssocOptions
  def initialize(name, self_class_name, options = {})
    options[:foreign_key] ||= "#{self_class_name.underscore}_id".to_sym
    @foreign_key = options[:foreign_key]

    options[:primary_key] ||= :id
    @primary_key = options[:primary_key]

    options[:class_name] ||= name.to_s.camelcase.singularize
    @class_name = options[:class_name]
  end
end

module Associatable
  def belongs_to(name, options = {})
    options = BelongsToOptions.new(name, options)

    define_method(name) do
      object = DBConnection.execute(<<-SQL, self.send(options.foreign_key))
        SELECT
          *
        FROM
          #{options.table_name}
        WHERE
          id = ?;
      SQL

      return nil if object == []
      options.model_class.new(object.first)

    end
  end

  def has_many(name, options = {})
    options = HasManyOptions.new(name, self.class.to_s, options)

    define_method(name) do
      return nil if objects == []

      answer = objects.map do |object|
        options.model_class.new(object)
      end

      answer
    end
  end

  def assoc_options
    # Wait to implement this. Modify `belongs_to`, too.
  end
end

class SQLObject
  extend Associatable
end
