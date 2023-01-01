require 'rails_helper'
RSpec.describe CatagoryRecord, type: :model do
    describe "Associations" do
        it { should belong_to(:record) }
        it { should belong_to(:catagory) }
    end
end