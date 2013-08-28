class YuyuesController < ApplicationController
  def new
    @yuyue = Yuyue.new
  end

  def create
    @yuyue = Yuyue.create(params[:yuyue])
    if @yuyue.save
      redirect_to success_path
    else
      redirect_to err_path
    end
  end
end
