class CategoriesController < ApplicationController

  def all
    @categories = Category.all
    render json: @categories.as_json
  end
end
