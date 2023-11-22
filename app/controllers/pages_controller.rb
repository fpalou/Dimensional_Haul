class PagesController < ApplicationController
  def home
    @categories = Category.all
    @dimensions = Dimension.all
    render :layout => false
  end

end
