class HomeController < ApplicationController
  def index
    @latest_blog = Blog.where(published: true).order("created_at DESC").limit(1).first
  end

  def info
  end

  def export
  end

  def kits
  end
end
