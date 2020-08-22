class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @subcategories = []
    @blog.subcategory_ids.each do |id|
      @subcategories << Subcategory.friendly.find(id)
    end

  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end


  def create
    @blog = Blog.new(blog_params)
    @blog.spree_user_id = current_spree_user.id

    @blog.subcategory_ids.each do |subid|
      s = Subcategory.friendly.find(subid)
      array = s.blog_ids
      array << @blog.id
      s.update_attributes(blog_ids: array)
      s.save!
    end

    if params[:blog][:image].present?
      @blog.image.attach(params[:blog][:image])
    end

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update

    @blog.subcategory_ids.each do |subid|
      s = Subcategory.friendly.find(subid)
      array = s.blog_ids
      array << @blog.id
      s.update_attributes(blog_ids: array)
      s.save!
    end

    if params[:blog][:image].present?
      @blog.image.purge
      @blog.image.attach(params[:blog][:image])
    end

    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(
        :title,
        :teaser,
        :body,
        :image,

        :published,
        :published_at,
        :subcategory_ids,

        :video_url,
        :user_id,
        :resource_id,
        :slug
      )
    end
end
