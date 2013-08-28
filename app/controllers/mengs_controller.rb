class MengsController < ApplicationController
  def index
    @meng = Meng.last
  end
end
