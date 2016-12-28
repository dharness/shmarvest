class ReportsController < ApplicationController
    before_filter :load_tabnames

    protected
        def load_tabnames
            @tab_names = ['Time', 'Detailed Time', 'Uninvoiced', 'Expense']
        end            
end
