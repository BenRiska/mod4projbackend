class ListitemsController < ApplicationController
    def index #all listitems
        listitems = Listitem.all
        render({json: listitems})
    end

    def show #individual record. one listitem
        listitem = Listitem.find(params[:id])
        render({json: listitem})
    end

    def create
        listitem = Listitem.new(name: params[:name])
        if listitem.save
          render json: listitem,status: :ok
        else
          render json: {data:listitem.errors},status: :unprocessable_entity
        end
    end

    def destroy
        listitem = Listitem.find(params[:id])
        listitem.destroy
        render json: {status: 'SUCCESS', message:'Deleted item', data:listitem},status: :ok
    end
end
