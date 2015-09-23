require_relative 'db_connection'
require_relative '01_sql_object'

module Searchable
  def where(params)
    param_values = []
    where_line = []

    params.each do |key, value|
      where_line << "#{key} = ?"
      param_values << "#{value}"
    end

    where_line = where_line.join(" AND ")
    objects = DBConnection.execute(<<-SQL, param_values)
        SELECT
          #{table_name}.*
        FROM
          #{self.table_name}
        WHERE
          #{where_line}
      SQL

      return [] if objects == []

      objects.map do |object|
        self.new(object)
      end
  end
end


class SQLObject
  extend Searchable
end
