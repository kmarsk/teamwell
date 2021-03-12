class Employees::DashboardsController < ApplicationController
    def index
      @employee = current_user
    end
end
