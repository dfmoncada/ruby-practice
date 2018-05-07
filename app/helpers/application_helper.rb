module ApplicationHelper
	def nullable_date_to_string date
		if date==nil then
			"no data"
		else
			date.strftime("%d/%m/%Y %H:%M")
		end
	end
end
