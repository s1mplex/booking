class ScreensController < ApplicationController
  respond_to :json

  def index
    @screens = Screen.all_screens_for_cinema_with_seat_count(params[:cinema_id])
    respond_with @screens
  end

  def create
    screen_params.inspect
    @screen = Screen.new(screen_params)
    @screen.cinema_id = params[:cinema_id]
    @screen.save
    respond_with @screen, location: "/cinemas/#{params[:cinema_id]}/screens"
  end

  def screen_params
    params.require(:screen).permit(:name)
  end
end
