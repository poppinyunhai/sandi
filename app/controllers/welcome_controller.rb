class WelcomeController < ApplicationController
  def index
    @product = Product.where(:type_id => "1").order("id DESC")
    @productq = Product.where(:type_id => "2").order("id DESC")
    @productw = Product.where(:type_id => "3").order("id DESC")
    @producte = Product.where(:type_id => "4").order("id DESC")
    @service = Service.last
    @brand = Brand.last
    @art = Art.last
    @yuyue = Yuyue.new
    @meet = Meet.last
  end
end
