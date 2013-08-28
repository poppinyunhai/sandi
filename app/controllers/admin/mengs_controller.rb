class Admin::MengsController < ApplicationController
  before_filter :admin
  def new
    @meng = Meng.new
  end

  def create
    @meng = Meng.create(params[:meng])
    redirect_to admin_mengs_path
  end

  def index
    @meng = Meng.last
  end

  def edit
    @meng = Meng.find(params[:id])
  end

  def update
    @meng = Meng.find(params[:id])
    @meng.update_attributes(params[:meng])
    redirect_to admin_mengs_path
  end

  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end
