require 'pry'
class SongsController < ApplicationController
  def new
    @song = Song.new
  end


  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.artist_id = params[:song][:artist_id]
    @song.genre_id = params[:song][:genre_id]
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = finder
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    @song = finder
  end

  def index
    @songs = Song.all
  end

  def edit
    @song = finder
  end

  private

  def finder
    @song = Song.find(params[:id])
  end
end
