module DeviseHelper
  def devise_error_messages!
    return {} unless devise_error_messages?
    return resource.errors.messages
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end