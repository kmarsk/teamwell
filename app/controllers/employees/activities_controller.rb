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
        @favorite = current_user.favorites.find_by(activity_id: @activity.id)
    end


    private
    def article_params
        params.require(:ctivity).permit(:title, :body, :photo)
    end
end
