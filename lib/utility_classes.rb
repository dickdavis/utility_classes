# frozen_string_literal: true

require 'rails'
require 'active_support/dependencies'
require 'utility_classes/version'
require 'utility_classes/railtie'

##
# Namespace for UtilityClasses gem
module UtilityClasses
  autoload :UtilityClassReader, 'utility_classes/utility_class_reader'
  autoload :TypeKeyNotFound, 'utility_classes/exceptions/type_key_not_found'
  autoload :VariantKeyNotFound, 'utility_classes/exceptions/variant_key_not_found'

  mattr_accessor :reader
  def self.reader
    @reader ||= UtilityClassReader.new
  end

  def self.for(type, variant: nil)
    reader.for(type, variant: variant)
  end
end
