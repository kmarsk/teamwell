class Employees::DashboardsController < ApplicationController
  def index
    @employee = current_user
    @bookings = current_user.bookings
    @favorites = current_user.favorites.includes(:activity)
  end
end
