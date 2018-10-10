class Admin::PostsController < ApplicationController
  layout "admin"

  def index
    @posts = Post.all
  end

  def show

  end

  def new
    @post = Post.new
    @authors = Author.all
  end

  def create
    Post.create(title:params[:post][:title], body:params[:post][:body], authors:[Author.find(params[:post][:id])])
    redirect_to admin_posts_path
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
   @post = Post.find params[:id]
   @post.title = params[:post][:title]
   @post.authors = [Author.find(params[:post][:authors])]
   @post.body = params[:post][:body]
   @post.tags = Tag.find(params[:post][:tag_ids])
   @post.save
   redirect_to posts_path
  end

  def destroy

  end
end
