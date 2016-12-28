module ApplicationHelper

    def selected_link(link_name)
        # check the current route
        if params[:controller] == link_name
            return " inner-nav__item--current"
        else
            return ""
        end
    end

    def selected_subnav(link_name)
       
    end

end
