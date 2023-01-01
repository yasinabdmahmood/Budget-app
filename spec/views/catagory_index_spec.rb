require 'rails_helper'

RSpec.describe 'Catagory index page', type: :feature do
  before(:example) do
    @user = User.create(name: 'Yaseen', email: 'test@test.com', password: 'password', password_confirmation: 'password')
    @category1 = Catagory.create(name: 'category_1', icon: 'http:/xyz', author: @user)
    @category2 = Catagory.create(name: 'category_2', icon: 'http:/abc', author: @user)
    sign_in @user
    visit catagory_index_path
  end

  describe 'catagory index page' do
    it ' -> I can see the name of all other catagories.' do
      expect(page).to have_content(@category1.name)
      expect(page).to have_content(@category2.name)
    end

    it ' -> I can see the picture of the  Catagory images.' do
      find("img[src='http:/abc']")
      find("img[src='http:/xyz']")
    end

    it ' -> I can see the word Catagories on the navbar.' do
      expect(page).to have_content('Catagories')
    end

    it ' -> I can see the word Catagories on the navbar.' do
      expect(page).to have_content('create catagory')
    end
  end
end
