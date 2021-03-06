class MoviesController < ApplicationController
  respond_to :json

  before_action :require_organiser_authentication!, only: :create

  def index
    @movies = Movie.all
    respond_with @movies, include: :cinemas
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    respond_with @movie
  end

  def create
    @movie = Movie.create(movie_params)
    respond_with @movie
  end

  private

  def movie_params
    params.permit(:title, :description, :cover, :duration, :director)
  end

end
