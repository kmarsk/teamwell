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
        @booking = Booking.new
        @schedules = @activity.schedules.where("date >= ?", Date.today)
    end


    private
    def article_params
        params.require(:article).permit(:title, :body, :photo)
    end
end
