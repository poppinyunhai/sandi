class Admin::BrandsController < ApplicationController
  before_filter :admin
  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.create(params[:brand])
    redirect_to admin_brands_path
  end

  def index
    @brand = Brand.last
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    @brand.update_attributes(params[:brand])
    redirect_to admin_brands_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
