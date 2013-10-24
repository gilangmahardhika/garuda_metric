require 'rails/generators'
require "rails/generators/active_record"
# This generator creates Province And Cities Migration
class GarudaMetricGenerator <  ActiveRecord::Generators::Base
	source_root File.expand_path("../templates", __FILE__)
	argument :name, type: :string, default: 'random_name'
	def copy_files
		copy_file "metrics.rb", "config/initializers/metrics.rb"
		generate "mongoid:config"
	end

end