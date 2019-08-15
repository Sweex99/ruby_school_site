# frozen_string_literal: true

# good
class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to posts_path, notice: 'Новина була успішно створена', status: 302 if @post.save
  end

  def new
    @post = Post.new
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to @post, status: 302
    else
      render :edit, status: 302
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: 'Новина була успішно видалена', status: 302
  end

  def index
    @shows = Post.order(created_at: :desc).paginate(page: params[:page], per_page: 15)
  end

  def show
    @shows = Post.find(params[:id])
    render :show
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :who, :logo)
  end
end
