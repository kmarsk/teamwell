class Employees::ActivitiesController < ApplicationController

    def index
      if params[:query].present?
        @activities = Activity.where("category ILIKE ?", "%#{params[:query]}%")
      else
        @activities = Activity.all
      end
    end

    def show
        @activity= Activity.find(params[:id])
    end
end
