# frozen_string_literal: true

module UtilityClasses
  module Exceptions
    ##
    # Exception thrown when type key is not found in config.
    class TypeKeyNotFound < StandardError
      attr_reader :type_key

      def initialize(type_key:)
        @type_key = type_key
        super("Type key #{type_key} not found in config")
      end
    end
  end
end
