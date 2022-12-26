class CreateCatagoryRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :catagory_records do |t|

      t.timestamps
    end
  end
end
