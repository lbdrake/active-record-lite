require_relative 'file_list'

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
    self.assoc_options[name] = BelongsToOptions.new(name, options)

    define_method(name) do
      options = self.class.assoc_options[name]

      key_val = self.send(options.foreign_key)
      options
        .model_class
        .where(options.primary_key => key_val)
        .first
    end
  end

  def has_many(name, options = {})
    self.assoc_options[name] =
    HasManyOptions.new(name, self.name, options)

    define_method(name) do
      options = self.class.assoc_options[name]

      key_val = self.send(options.primary_key)
      options
        .model_class
        .where(options.foreign_key => key_val)
    end
  end

  def assoc_options
    @assoc_options ||= {}
    @assoc_options
  end
end

class SQLObject
  extend Associatable
end
