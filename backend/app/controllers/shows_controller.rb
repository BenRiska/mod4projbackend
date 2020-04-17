class ShowsController < ApplicationController
    def index #all shows
        shows = Show.all
        render({json: shows})
    end

    def show #individual record. one show
        show = Show.find(params[:id])
        render({json: show})
    end

    def create
        show = Show.new(title: params[:title])
        if show.save
          render json: show,status: :ok
        else
          render json: {data:show.errors},status: :unprocessable_entity
        end
    end
end
