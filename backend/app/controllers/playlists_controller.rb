class PlaylistsController < ApplicationController

    def index #all playlists
        playlists = Playlist.all
        render({json: playlists})
    end

    def show #individual record. one playlist
        playlist = Playlist.find(params[:id])
        render({json: playlist})
    end

    def create
        playlist = Playlist.new(name: params[:name])
        if playlist.save
          render json: playlist,status: :ok
        else
          render json: {data:playlist.errors},status: :unprocessable_entity
        end
    end
end
