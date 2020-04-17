class CommentsController < ApplicationController
    def index #all comments
        t = ""
        comments = Comment.all
        render({json: comments})
    end

    def show #individual record. one comment
        comment = Comment.find(params[:id])
        render({json: comment})
    end

    def create
        comment = Comment.new(content: params[:content])
        if comment.save
          render json: comment,status: :ok
        else
          render json: {data:comment.errors},status: :unprocessable_entity
        end
    end

    def update
        comment = Comment.find(params[:id])
        comment[:content] = params[:content]
        if comment.save
          render json: comment,status: :ok
        else
          render json: {data:comment.errors},status: :unprocessable_entity
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {status: 'SUCCESS', message:'Deleted comment', data:comment},status: :ok
    end
end
