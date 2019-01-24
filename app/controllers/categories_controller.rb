class CategoriesController < ApplicationController
  def show
    @article = Category.find_by(:category => params[:category])
  end
end
