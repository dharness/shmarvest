class TimeController < ApplicationController
    before_filter :load_tabnames

    protected
        def load_tabnames
            @tab_names = ['Time', 'Expenses']
        end         
end
