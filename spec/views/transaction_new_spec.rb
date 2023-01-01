require 'rails_helper'

RSpec.describe 'Transaction index page', type: :feature do
  before(:example) do
    @user = User.create(name: 'Yaseen', email: 'test@test.com', password: 'password', password_confirmation: 'password')
    @category1 = Catagory.create(name: 'category_1', icon: 'http:/xyz', author: @user)
    @category2 = Catagory.create(name: 'category_2', icon: 'http:/abc', author: @user)
    @record1 = Record.create(name: 'tr1', amount: 10, author: @user)
    @catagory_record1 = CatagoryRecord.create(record: @record1, catagory: @category1)

    sign_in @user
    visit transaction_new_path_url(id: @category1.id)
  end

  describe 'transaction new page' do
    it ' -> I can see the phrase Create new transaction on the page' do
      expect(page).to have_content('Create new transaction')
    end
  end
end
