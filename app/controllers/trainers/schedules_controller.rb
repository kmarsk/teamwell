

class Trainers::SchedulesController < ApplicationController
  def create
  end

  def create
      @activity = Activity.find(params[:activity_id])
      @schedule = Schedule.new(schedule_params)
      @schedule.activity = @activity

      if @schedule.save
        redirect_to trainers_activity_path(@activity), notice: "New time was added"
      else
        render 'new'
      end
    end


     private

    def schedule_params
      params.require(:schedule).permit(:time, :date)
    end
end
