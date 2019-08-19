class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  @post = Post.new(post_params)
 #current_user.id == @post.user_id
    if @post.save
  	  redirect_to posts_path
    else
  	  render :new
    end
  end


  def show
  	@post = Post.find(params[:id])
  end

  def index
  	@posts = Post.all
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.new(post_params)
    #current_user.id == @post.user_id
    if @post.save
    	redirect_to posts_path
    else
    	render :new
    end
  end

  def destroy
  	@post = Post.find(params[:id])
  	#current_user.id == @post.user_id
  	if @post.destroy
  	redirect_to post_path
    else
    render :index
    end
  end

  private
  def post_params
  	params.require(:post).permit(:title, :body)
  end
end
