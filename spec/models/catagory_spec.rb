require 'rails_helper'
RSpec.describe Catagory, type: :model do
  before :each do
    @user = User.create(name: 'Yaseen', email: 'yasin@gmial.com', password: 'password',
                        password_confirmation: 'password')
    @catagory1 = Catagory.create(name: 'category1', icon: 'http:/xyz', author: @user)
    @catagory2 = Catagory.create(icon: 'http:/xyz', author: @user)
    @catagory3 = Catagory.create(name: 'C' * 101, icon: 'http:/xyz', author: @user)
    @catagory4 = Catagory.create(name: 'category4', author: @user)
    @catagory5 = Catagory.create(name: 'category1', icon: 'http:/xyz', author: @user)
    @catagory6 = Catagory.create(name: 'category1', icon: 'http:/xyz', author: @user)
  end

  it 'name must not be blank' do
    expect(@catagory1).to be_valid
  end
  it 'name must not be blank' do
    expect(@catagory2).to_not be_valid
  end
  it 'name must not be longer than 100 character' do
    expect(@catagory3).to_not be_valid
  end

  it 'icon must not be blank' do
    expect(@catagory4).to_not be_valid
  end

  describe 'Associations' do
    it { should belong_to(:author) }
    it { should have_many(:catagory_records) }
  end
end
