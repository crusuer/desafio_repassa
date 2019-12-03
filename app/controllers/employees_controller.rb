class EmployeesController < ApplicationController
    before_action :authenticate_employee!
    
    # GET /employees
    # GET /employees.json
    def index
        @employees = Employee.all
    end

    # DELETE /employees
    # DELETE /employees.json
    def destroy(resource_or_scope=nil)
        return sign_out_all_scopes unless resource_or_scope
        scope = Devise::Mapping.find_scope!(resource_or_scope)
        user = warden.user(scope: scope, run_callbacks: false) # If there is no user
      
        warden.logout(scope)
        warden.clear_strategies_cache!(scope: scope)
        instance_variable_set(:"@current_#{scope}", nil)
      
        !!user
    end

end

