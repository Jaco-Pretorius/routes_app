class DuplicatesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @all_products = Product.where(['id <> ?', params[:product_id]])
  end
  
  def create
    @product = Product.find(params[:product_id])
    @duplicate_of = Product.find(params[:duplicate_of_id])
    @product.duplicate = true
    @product.duplicate_of = @duplicate_of.id
    if @product.save
      redirect_to products_path
    else
      render 'new_duplicate'
    end
  end
end
