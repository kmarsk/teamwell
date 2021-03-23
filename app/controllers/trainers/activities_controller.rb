class Trainers::ActivitiesController < ApplicationController

  def show
    @activity = Activity.find(params[:id])
    @bookings = @activity.bookings
    @schedule = Schedule.new
    @schedules = @activity.schedules
    
  end

  # def dashboard
  # end


  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to trainers_activity_path(@activity), notice: "Class was successfully created"
    else
      render 'new'
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  
  def update
    @activity = Activity.find(params[ :id])

   if @activity.update(activity_params)
     redirect_to trainers_dashboards_path
   else
     render :edit
   end
  end    
      

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to root_path, notice: 'Class has been successfully deleted.'
  end

  private

  def activity_params
    params.require(:activity).permit(:category, :time, :date, :frequency, :equipment, :duration, :description, :photo)
  end
end


