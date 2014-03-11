module ApplicationHelper

	def mark_required(object, attribute)
		"*" if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
	end

	def flash_class(level)
		case level
		when :notice then "info"
		when :error then "error"
		when :alert then "warning"
		end
	end
	
end
