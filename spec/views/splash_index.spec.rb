require 'rails_helper'

RSpec.describe 'Transaction new page', type: :feature do
  before(:example) do
    @user = User.create(name: 'Yaseen', email: 'test@test.com', password: 'password', password_confirmation: 'password')
    @category1 = Catagory.create(name: 'category_1', icon: 'http:/xyz', author: @user)
    @category2 = Catagory.create(name: 'category_2', icon: 'http:/abc', author: @user)
    @record1 = Record.create(name: 'tr1', amount: 10, author: @user)
    @catagory_record1 = CatagoryRecord.create(record: @record1, catagory: @category1)


    visit splash_index_path
  end

  describe 'splash index page' do
    it ' -> I can see the name of the app  on the page' do
      expect(page).to have_content('Budget App')
    end

    it ' -> I can see option to Log in  on the page' do
      expect(page).to have_content('Log in')
    end

    it ' -> I can see option to Sign Up  on the page' do
      expect(page).to have_content('Sign Up')
    end
  end
end
