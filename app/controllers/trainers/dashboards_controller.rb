class Trainers::DashboardsController < ApplicationController
    def index
        @trainer = current_user
        @activities = Activity.all
    end
end