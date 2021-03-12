class Employees::ActivitiesController < ApplicationController

    def index
      if params[:query].present?
        @activities = Activity.where(category: params[:query])
      else
        @activities = Activity.all
      end
    end

    def show
        @activity= Activity.find(params[:id])
        @booking = Booking.new
    end    

 
    private
    def article_params
        params.require(:article).permit(:title, :body, :photo)
    end
end
