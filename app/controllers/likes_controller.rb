class LikesController < ApplicationController
    def index 
        likes = Like.all
        render json: likes
    end

    def create
        like = Like.create(number: params[:number], user_id: params[:user_id], post_id: params[:post_id])
        render json: like
    end
end
