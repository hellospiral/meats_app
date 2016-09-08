class CreateMeats < ActiveRecord::Migration[5.0]
  def change
    create_table :meats do |t|
      t.column :name, :string
      t.column :category_id, :integer
      t.column :average_rating, :integer
    end
  end
end
