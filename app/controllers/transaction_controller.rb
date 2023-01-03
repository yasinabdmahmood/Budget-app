class TransactionController < ApplicationController
  before_action :authenticate_user!
  def index
    @records = current_user.records.select { |record| record.catagory_records[0].catagory.id == params[:id].to_i }
    @total = @records.reduce(0) { |sum, num| sum + num.amount }

    @catagory_id = params[:id]
    @catagory = Catagory.find(@catagory_id)
  end

  def create
    @new_record = Record.new(name: transaction_params[:name], amount: transaction_params[:amount])
    @new_record.author = current_user
    @new_record.save
    @selected_catagory = Catagory.find(transaction_params[:catagory])
    @new_catagory_record = CatagoryRecord.new(record: @new_record, catagory: @selected_catagory)
    @new_catagory_record.save
    if @new_catagory_record.save && @new_record.save
      redirect_to "/transaction/index/#{transaction_params[:catagory]}"
    else
      render :new
    end
  end

  def new
    @new_record = Record.new
    @catagories = current_user.catagories.map { |catagory| [catagory.name, catagory.id] }
    @catagory_id = params[:id]
    @catagory_page_path = transaction_index_path_url(id: params[:id])
  end

  private

  def transaction_params
    params.require(:new_record).permit(:name, :amount, :catagory_id, :catagory)
  end
end
