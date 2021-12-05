# frozen_string_literal: true

require 'yaml'

require_relative 'exceptions/type_key_not_found'
require_relative 'exceptions/variant_key_not_found'

module UtilityClasses
  ##
  # Provides access to utility classes stored in config
  class UtilityClassReader
    def initialize
      @styles = data_from_config
      @last_updated = File.ctime(config_file)
    end

    def for(type, variant: nil)
      reload_config if config_changed?

      classes = retrieve_classes_for_type(type)
      variant_classes = retrieve_classes_for_variant(type, variant) if variant

      variant_classes ? "#{classes} #{variant_classes}" : classes
    end

    private

    attr_reader :styles, :last_updated

    def data_from_config
      YAML.safe_load(File.read(config_file)).deep_symbolize_keys
    end

    def config_file
      Rails.root.join('config/utility_classes.yml')
    end

    def reload_config
      @styles = data_from_config
      @last_updated = File.ctime(config_file)
    end

    def config_changed?
      return false unless Rails.env.development?

      last_updated != File.ctime(config_file)
    end

    def retrieve_classes_for_type(type)
      classes = styles.dig(type, :base)
      raise UtilityClasses::Exceptions::TypeKeyNotFound.new(type_key: type) unless classes

      classes
    end

    def retrieve_classes_for_variant(type, variant)
      classes = styles.dig(type, :variants, variant)
      raise UtilityClasses::Exceptions::VariantKeyNotFound.new(variant_key: variant) unless classes

      classes
    end
  end
end
