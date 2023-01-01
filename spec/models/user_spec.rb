require 'rails_helper'
RSpec.describe User, type: :model do
    before :each do
        @user1 = User.create(name: 'Yaseen', email: 'yasin@gmial.com', password: 'password', password_confirmation: 'password')
        @user2 = User.create(email: 'ali@gmial.com', password: 'password', password_confirmation: 'password')
        @user3 = User.create(name: 'Bob'*50, email: 'bob@gmial.com', password: 'password', password_confirmation: 'password')
    end
    
    it 'Name must not be blank' do
        expect(@user1).to be_valid
    end
    it 'Name must not be blank' do
        expect(@user2).to_not be_valid
    end
    it 'Name must not be blank' do
        expect(@user3).to_not be_valid
    end

    describe "Associations" do
        it { should have_many(:records) }
        it { should have_many(:catagories) }
    end

   
end