class ArtsController < ApplicationController
  def index
    @art = Art.last
  end
end
