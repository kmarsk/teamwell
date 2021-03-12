class Trainers::DashboardsController < ApplicationController
    def index
        @trainer = current_user
    end    
end