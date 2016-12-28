class ProjectsController < ApplicationController

    before_filter :load_projects

    protected
        def load_projects
            @projects = [{
                client: "Larry Blyth",
                name: "Valia",
                code: "",
                startsOn: "",
                endsOn: "",
                notes: ""
            }]
        end

end
