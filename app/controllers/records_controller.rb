class RecordsController < ApplicationController
  load_and_authorize_resource

  def index
    @category = current_category
  end

  def new; end

  def create
    @record = current_user.records.new(record_params)
    if @record.save
      redirect_to category_records_path(current_category), notice: 'You completed this transaction successfully'
    else
      render :new, alert: 'New transaction could not be created.'
    end
  end

  def current_category
    @categories = current_user.categories.includes(:records).find(params[:category_id])
  end

  private

  def record_params
    params.require(:record).permit(:name, :amount, category_ids: [])
  end
end
