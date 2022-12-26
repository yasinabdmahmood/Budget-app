class AddUserRefToRecord < ActiveRecord::Migration[7.0]
  def change
    add_reference :records, :author, null: false, foreign_key:{to_table: :users}
  end
end
