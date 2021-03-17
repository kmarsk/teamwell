class Trainers::DashboardsController < ApplicationController
    def index
        @trainer = current_user
        @activities = current_user.activities
        @bookings = Booking.includes(schedule: :activity).where(activities: { id: @activities.ids}).where("schedules.date >= ?", Date.today)
    end
end