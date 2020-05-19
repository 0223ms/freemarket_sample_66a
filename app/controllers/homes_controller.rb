class HomesController < ApplicationController

  def index
    
  end



  def new
    @product = Product.new
    @product.images.new
    @category_parent_array = Category.where(ancestry: nil)
  end


  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      @category_parent_array = Category.where(ancestry: nil)
      render :new
    end

  end

  def show
    @product = Product.find(params[:id])

  end

  def edit
    @product = Product.new
    @product.images.new
    @category_parent_array = Category.where(ancestry: nil)
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :condition, :delivery_cost, :delivery_origin, :delivery_days, :price,
                                    :category_id, :brand_id, :size_id, :buyer_id, images_attributes: [:id, :image] ).merge(user_id: current_user.id).merge(saler_id: current_user.id)
  end

end
