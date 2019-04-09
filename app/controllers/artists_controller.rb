class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:artist][:name]
    @artist.bio = params[:artist][:bio]
    @artist.save
    redirect_to artist_path(@artist)
  end

  def show
    @artist = finder
  end

  def index
    @artists = Artist.all
  end

  def edit
    @artist = finder
  end

  def update
    @artist = finder
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def finder
    @artist = Artist.find(params[:id])
  end
end
