class PostsController < ApplicationController
  def index
  	@posts = Post.all

  end

  def new
  	if params[:post][:name]
  		@post = Post.new(params.require(:post).permit(:name))
  		@post.save
  		redirect_to root_path
  	else
  		render :index
  	end

  end
end
