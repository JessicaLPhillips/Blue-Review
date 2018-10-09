class AdminController < ApplicationController

  def index
  end

  def display_posts
    @posts = Post.all
  end

  def display_authors
    @authors = Author.all
  end

  def display_tags
    @tags = Tag.all
  end
end
