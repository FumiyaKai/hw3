class PostsController < ApplicationController
  def index
    render :template => "posts/index"
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Place.new
    @post["name"] = params["post"]["name"]
    @post.save
    redirect_to "/posts"
  end

end
