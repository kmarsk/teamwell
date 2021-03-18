class Employees::FavoritesController < ApplicationController
  def create
    @favorites = Favorite.new
    @favorites.user = current_user
    @activity = Activity.find(params[:activity_id])
    @favorites.activity = @activity
    @favorites.save
    redirect_to employees_activity_path(@activity)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @activity = Activity.find(params[:activity_id])
    @favorite.destroy
    redirect_to employees_activity_path(@activity)
  end
end
