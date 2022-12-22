module MdescriptionsHelper
	def dynamic(key)
		case key
		when 'success'
			'success'
		when 'warning'
			'warning'
		when 'danger'
			'danger'
		end
	end
			
			
end
