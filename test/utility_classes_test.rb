# frozen_string_literal: true

require_relative 'test_helper'

##
# Tests for UtilityClasses
class UtilityClassesTest < ActiveSupport::TestCase
  test 'it has a version number' do
    assert UtilityClasses::VERSION
  end
end
