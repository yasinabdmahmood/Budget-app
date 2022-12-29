class CatagoryController < ApplicationController
  before_action :authenticate_user!
  def index
    @catagories = current_user.catagories.includes(:catagory_records)
    @totals = @catagories.map do |catagory|
      catagory.catagory_records.reduce(0) { |sum, num| sum + num.record.amount }
    end
  end

  def new
    @new_catagory = Catagory.new
  end

  def create
    @new_catagory = Catagory.new(catagory_params)
    @new_catagory.author = current_user
    if @new_catagory.save
      redirect_to '/catagory/index'
    else
      redirect_to :new
    end
  end

  private

  def catagory_params
    params.require(:new_catagory).permit(:name, :icon)
  end
end
