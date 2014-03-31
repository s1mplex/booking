class ShowsController < ApplicationController
  respond_to :json

  def index
    @shows = Movie::Show.select(:date, :name, "movie_shows.id").where(movie_id: params[:movie_id])
    .joins(:screen)
    respond_with @shows
  end

end
