class RecordsController < ApplicationController
  load_and_authorize_resource

  def index
    @category = current_category
  end

  def new; end

  def create; end

  def current_category
    @categories = current_user.categories.includes(:records).find(params[:category_id])
  end
end
