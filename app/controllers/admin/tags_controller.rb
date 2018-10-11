class Admin::TagsController < ApplicationController
  layout "admin"

  def index
    @tags = Tag.all
  end

  def show

  end

  def new
    @tag = Tag.new
  end

  def create
    Tag.create(name:params[:tag][:name])
    redirect_to admin_tags_path
  end

  def edit
    @tag = Tag.find params[:id]
  end

  def update
   redirect_to admin_tags_path
  end

  def destroy

  end
end
