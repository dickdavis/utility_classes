# frozen_string_literal: true

require 'test_helper'

##
# Tests for UtilityClasses
class UtilityClassesTest < ActiveSupport::TestCase
  test 'it has a version number' do
    assert UtilityClasses::VERSION
  end

  test 'it loads the config file' do
    assert UtilityClasses.for(:heading)
  end

  test 'it returns base styles for a given type key' do
    assert_equal 'font-semibold text-center', UtilityClasses.for(:heading)
  end

  test 'it returns base and variant styles for a given type/variant key combination' do
    assert_equal 'font-semibold text-center text-4xl', UtilityClasses.for(:heading, variant: :grande)
  end

  test 'it raises an exception when the provided type key is not found' do
    assert_raises UtilityClasses::Exceptions::TypeKeyNotFound do
      UtilityClasses.for(:foo)
    end
  end

  test 'it raises an exception when the provided variant key is not found' do
    assert_raises UtilityClasses::Exceptions::VariantKeyNotFound do
      UtilityClasses.for(:heading, variant: :foo)
    end
  end
end
