class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = finder
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = finder
  end

  def index
    @genres = Genre.all
  end

  def edit
    @genre = finder
  end

  private

  def finder
    @genre = Genre.find(params[:id])
  end
end
