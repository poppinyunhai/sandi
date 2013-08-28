class Admin::TypesController < ApplicationController
  before_filter :admin
  def index
    @type = Type.all
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.create(params[:type])
    redirect_to admin_types_path
  end

  def destroy
    @type = Type.find(params[:id])
    @type.destroy
    redirect_to admin_types_path
  end
  def edit
    @type = Type.find(params[:id])
  end

  def update
    @type = Type.find(params[:id])
    @type.update_attributes(params[:type])
    redirect_to admin_types_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
