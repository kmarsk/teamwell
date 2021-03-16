class Employees::DashboardsController < ApplicationController
    def index
        @employee = current_user
        @bookings = Booking.all
    end

end
