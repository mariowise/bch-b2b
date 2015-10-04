module ApplicationHelper
	def link_to_remove_fields(name, f)
		f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
	end

	def link_to_add_fields(name, f, association)
		new_object = f.object.class.reflect_on_association(association).klass.new
		fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
			render(association.to_s.singularize + "_fields", :f => builder)
		end
		link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
	end

	def current_route
		begin
			eval("#{controller_name}_#{action_name}_path")
		rescue
			eval("#{controller_name}_path")
		end	
	end

	def format_rut(rut)
		rut = rut.to_s
		"#{ActionController::Base.helpers.number_with_delimiter(rut[0..-2], delimiter: ".")}-#{rut.split("").last}"
	end

	def as_label(value)
		content_tag(:span, :class => "label label-#{value.gsub(' ', '')}") do 
			value
		end		
	end

	def as_money(value)
		value = value.to_s
		"$ #{ActionController::Base.helpers.number_with_delimiter(value, delimiter: ".")}"
	end

	def as_phone(value)
		if value
			value = value.to_s
			value = value.split("").reverse().join("")
			stack = []
			(0..(value.length/4)).each do |i|
				stack << value[i*4..i*4+3]
				stack << " "
			end
			value = stack.join("")
			value.split("").reverse().join("")
		end
	end

	def yes_no(value)
		return "Sí" if value == true
		"No"
	end
end
