# GarudaMetric

Populate simple metric data, and store the to MongoDB

## Installation

Add this line to your application's Gemfile:

    gem 'garuda_metric'
    gem 'mongoid', '~> 3.1.4'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install garuda_metric

## Usage

Run this command

	$ rails generate garuda_metric

change your mongoid.yml configuration in config/mongoid.yml depends on your MongoDB configuration

add these following lines to config/application.rb to prevent default mongoid overrides

	config.generators do |g|
	  g.orm :active_record
	end

To get available data
	$ rails c

	# get the first data
	$ GarudaMetric::Metric.first

	# get interval time data
	$ GarudaMetric::MetricMetric.get_interval_data(start_time...end_time)

	# Get 10 last subscribed notifications
	$ GarudaMetric.order_last

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
