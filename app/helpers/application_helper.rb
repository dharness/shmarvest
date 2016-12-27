module ApplicationHelper

    def selected_link(link_name)
        if params[:controller] == link_name
            return " inner-nav__item--current"
        else
            return ""
        end
    end

end
