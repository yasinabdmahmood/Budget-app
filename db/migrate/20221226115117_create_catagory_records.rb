class CreateCatagoryRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :catagory_records do |t|
      t.references :record, null: false, foreign_key: true
      t.references :catagory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
