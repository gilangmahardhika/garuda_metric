require 'mongoid'
module GarudaMetric
	module Metric
		include Mongoid::Document
		include Mongoid::Timestamps

		attr_accessible :name, :start, :finish, :path, :page_duration, :view_duration, :db_duration

		field :name, type: String
		field :start, type: DateTime
		field :finish, type: DateTime
		field :path, type: String # payload[:path]  
		field :page_duration, type: Float # (finish - start) * 1000  
		field :view_duration, type: Float # payload[:view_runtime]  
		field :db_duration, type: Float # payload[:db_runtime]  

		def self.get_from_interval(start, finish)
			where(created_at: start..finish)
		end

		scope :order_last, ->(limit = 10) {order_by(created_at: :desc).limit(10)}

	end
end