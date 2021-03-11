class Trainers::ActivitiesController < ApplicationController

  def show
    @activity = Activity.find(params[:id])
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
      redirect to trainers_activity_path(@activity), notice: "Class was successfully created"
    else
      render 'new'
    end
  end

  private
  def activity_params
    params.require(:activity).permit(:category, :time, :date, :frequency, :equipment, :duration, :description)
  end

end



