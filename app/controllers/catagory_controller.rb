class CatagoryController < ApplicationController
  def index
    @catagories = current_user.catagories
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
      render :new
    end
  end

  private

  def catagory_params
    params.require(:new_catagory).permit(:name, :icon)
  end
end
