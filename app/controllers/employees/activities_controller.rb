class Employees::ActivitiesController < ApplicationController
    def index
        @activities = Activity.all
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

