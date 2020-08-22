class AdminController < ApplicationController
  def blogs
    @blogs = Blog.all
  end

  def resources
    @resources = Resource.all
  end

  def subcategories
    @subcategories = Subcategory.all
  end

  def subscribers
    @subscribers = Subscriber.all
  end
end
