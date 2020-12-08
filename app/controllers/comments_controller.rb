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
        comment = Comment.create(comment_params)
        # byebug
        render json: comment
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :user_id, :post_id)
    end
end
