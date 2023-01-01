require 'rails_helper'
RSpec.describe Record, type: :model do
  before :each do
    @user = User.create(name: 'Yaseen', email: 'yasin@gmial.com', password: 'password',
                        password_confirmation: 'password')
    @record1 = Record.create(name: 'Transaction_1', amount: 2.5, author: @user)
    @record2 = Record.create(amount: 2.5, author: @user)
    @record3 = Record.create(name: 'T' * 101, amount: 2.5, author: @user)
    @record4 = Record.create(name: 'Transaction_1', author: @user)
    @record5 = Record.create(name: 'Transaction_1', amount: 'xyz', author: @user)
    @record6 = Record.create(name: 'Transaction_1', amount: 0, author: @user)
  end

  it 'name must not be blank' do
    expect(@record1).to be_valid
  end
  it 'name must not be blank' do
    expect(@record2).to_not be_valid
  end
  it 'name must not be longer than 100 character' do
    expect(@record3).to_not be_valid
  end

  it 'amount must not be blank' do
    expect(@record4).to_not be_valid
  end

  it 'amount must be numerical' do
    expect(@record5).to_not be_valid
  end

  it 'amount must be greater than zero' do
    expect(@record6).to_not be_valid
  end

  describe 'Associations' do
    it { should belong_to(:author) }
    it { should have_many(:catagory_records) }
  end
end
