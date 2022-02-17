class CategoriesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  def index
    @categories = current_user.categories.includes(:records).order(id: :desc)
  end

  def new; end

  def create
    add_category = current_user.categories.new(category_params)

    if add_category.save
      redirect_to '/categories', notice: 'Category Added!'
    else
      render :new, alert: 'Failed to add category'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
