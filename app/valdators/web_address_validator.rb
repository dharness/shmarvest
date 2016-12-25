class WebAddressValidator < ActiveModel::EachValidator
  def validate_each(record, attr_name, value)
    unless value =~ /^[a-zA-Z0-9]*$/i
      record.errors.add(attr_name, :email, options.merge(value: value))
    end
  end
end

# This allows us to assign the validator in the model
module ActiveModel::Validations::HelperMethods
  def validates_web_address(*attr_names)
    validates_with WebAddressValidator, _merge_attributes(attr_names)
  end
end