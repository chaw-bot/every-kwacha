class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @categories = current_user.categories
  end

  def new; end

  def create; end
end
