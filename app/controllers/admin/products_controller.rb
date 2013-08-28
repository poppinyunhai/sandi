class Admin::ProductsController < ApplicationController
  before_filter :admin
  def index
    @product = Product.page(params[:page]).per(30).order("id DESC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])

    redirect_to admin_products_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(params[:product])
    redirect_to admin_products_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end

end
