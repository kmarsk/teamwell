class Trainers::DashboardsController < ApplicationController
    def show
        @trainer = User.find(params[:id])
    end    
end