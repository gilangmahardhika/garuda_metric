ActiveSupport::Notifications.subscribe do |name, start, finish, id, payload|  
  GarudaMetric::Metric.create do |page_request| 
	 	page_request.name = name
	 	page_request.start = start
	 	page_request.finish = finish
	  page_request.path = payload[:path]  
	  page_request.page_duration = (finish - start) * 1000  
	  page_request.view_duration = payload[:view_runtime]  
	  page_request.db_duration = payload[:db_runtime]  
	end  
end  