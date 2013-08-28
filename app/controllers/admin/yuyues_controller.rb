class Admin::YuyuesController < ApplicationController
  before_filter :admin
  def index
    @yuyue = Yuyue.page(params[:page]).per(30).order("id DESC")
  end

  def destroy
    @yuyue = Yuyue.find(params[:id])
    @yuyue.destroy
    redirect_to admin_yuyues_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
