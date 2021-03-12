class Employees::DashboardsController < ApplicationController
    def show
        @employee = User.find(params[:id])
    end    
end