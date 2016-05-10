module ApplicationHelper

	def bootstrap_class_for(flash_type) #creating helper to convert rails type to appropriate bootstrap class.
		case flash_type
		when "success"
			"alert-success"
		when "error"
			"alert-danger"
		when "alert"
			"alert-warning"
		when "notice"
			"alert-info"
		else
			flash_type.to_s   #in case there are other flash messages. Convert to string to ensure it doesn't crash program. 
		end
	end
end
