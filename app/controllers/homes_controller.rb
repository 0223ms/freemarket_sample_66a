class HomesController < ApplicationController

  def index
    
  end



  def new
    @product = Product.new
    @product.images.new
  end


  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end

  end

  def show
    @product = Product.new
    # @product = Product.find(params[:id])
  end


  private
  def product_params
    params.require(:product).permit(:name, :price, images_attributes: [:image])
  end

end
