class AddIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :meat_id, :integer
  end
end
