class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    redirect_to @post if @post.save
    0
  end

  def new
    @post = Post.new
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def index
    @shows = Post.order(created_at: :desc).paginate(page: params[:page], per_page: 1)
  end

  def show
    @shows = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :who)
  end
end
