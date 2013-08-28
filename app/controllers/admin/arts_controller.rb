class Admin::ArtsController < ApplicationController
  before_filter :admin
  def new
    @art = Art.new
  end

  def create
    @art = Art.create(params[:art])
    redirect_to admin_arts_path
  end

  def index
    @art = Art.last
  end

  def edit
    @art = Art.find(params[:id])
  end

  def update
    @art = Art.find(params[:id])
    @art.update_attributes(params[:art])
    redirect_to admin_arts_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
