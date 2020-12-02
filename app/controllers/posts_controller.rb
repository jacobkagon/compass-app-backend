class PostsController < ApplicationController
    
    def index
        posts = Post.all 
        render json: posts
    end

    def new
        post = Post.new
        render json: post
    end

    def create
        post = Post.create(image: params[:image], user_id: params[:user_id])
        render json: post
        # if post.save
        #     render index
        # else
        #     flash(danger: 'Post did not upload successfully!')
    end

end
