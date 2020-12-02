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
        post = Post.new(image: params[:image], user_id:(User.create(name: params[:name])).id)
        if post.save
            render index
        else
            flash(danger: 'Post did not upload successfully!')
        end
    end
end
