class Admin::AuthorsController < ApplicationController
  layout "admin"

  def index
    @authors = Author.all
  end

  def show

  end

  def new
    @author = Author.new
  end

  def create
    Author.create(name:params[:author][:name])
    redirect_to admin_authors_path
  end

  def edit
    @author = Author.find params[:id]
  end

  def update
   redirect_to admin_author_path
  end

  def destroy

  end
end
