class CommentsController < ApplicationController
    def index 
        comments = Comment.all
        render json: comments
    end

    def new
        comment = Comment.new
        render json: comment
    end

    def create
        comment = Comment.create(body: params[:body], user_id: params[:user_id], post_id: params[:post_id])
        render json: comment
    end
end
