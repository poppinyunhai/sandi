class Admin::ServicesController < ApplicationController
  before_filter :admin
  def new
    @service = Service.new
  end

  def create
    @service = Service.create(params[:service])
    redirect_to admin_services_path
  end

  def index
    @service = Service.last
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update_attributes(params[:service])
    redirect_to admin_services_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
