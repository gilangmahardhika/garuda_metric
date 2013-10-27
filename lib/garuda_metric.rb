require "garuda_metric/version"
require 'active_support'
module GarudaMetric
	extend ActiveSupport::Concern
	extend ActiveSupport::Autoload

	autoload :Metric,     'garuda_metric/metric'
end