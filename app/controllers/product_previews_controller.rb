class ProductPreviewsController < ApplicationController
  def index
    @product_preview = ProductPreview.all
  end

  def show
    @product_preview = ProductPreview.find(params[:id])
  end


  def new
    @product_preview_create = ProductPreview.new
    @product_preview_create.products.build
  end

  def create
    if ProductPreview.create!(blog_params)
      redirect_to product_previews_url
    else
      render new
    end
  end


  private
  def blog_params
    params.require(:product_preview).permit(:name, :price, :picture, :products_attributes => [:id,:color,:size,:quantity,:_destroy])
  end
end
