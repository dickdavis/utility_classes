# frozen_string_literal: true

module UtilityClasses
  module Generators
    ##
    # Creates basic installation files for UtilityClasses
    class InstallGenerator < Rails::Generators::Base
      desc 'Create basic installation files for UtilityClasses'
      source_root File.expand_path('templates', __dir__)

      def copy_config_file
        copy_file 'utility_classes.yml', 'config/utility_classes.yml'
      end
    end
  end
end
