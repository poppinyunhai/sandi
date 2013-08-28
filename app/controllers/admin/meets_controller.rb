class Admin::MeetsController < ApplicationController
  before_filter :admin
  def new
    @meet = Meet.new
  end

  def create
    @meet = Meet.create(params[:meet])
    redirect_to admin_meets_path
  end

  def index
    @meet = Meet.last
  end

  def edit
    @meet = Meet.find(params[:id])
  end

  def update
    @meet = Meet.find(params[:id])
    @meet.update_attributes(params[:meet])
    redirect_to admin_meets_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
