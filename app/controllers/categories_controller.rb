class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(:title)
    render 'categories/index.json.jbuilder'
  end
end
