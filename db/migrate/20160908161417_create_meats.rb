class CreateMeats < ActiveRecord::Migration[5.0]
  def change
    create_table :meats do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :image, :string
      t.column :weight, :integer
      t.column :price, :integer
      t.column :category_id, :integer
      t.column :average_rating, :integer, :default => 0
    end
  end
end
