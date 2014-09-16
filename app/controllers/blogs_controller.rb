class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    if Blog.create!(blog_params)
      redirect_to product_previews_url
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def blog_params
    params.require(:blog).permit(:title, :description)
  end
end
