class HomeController < ApplicationController

  def index
    @lists = List.everyone
  end

end
