# frozen_string_literal: true

module UtilityClasses
  module Exceptions
    ##
    # Exception thrown when variant key is not found in config.
    class VariantKeyNotFound < StandardError
      attr_reader :variant_key

      def initialize(variant_key:)
        @variant_key = variant_key
        super("Variant key #{variant_key} not found in config")
      end
    end
  end
end
