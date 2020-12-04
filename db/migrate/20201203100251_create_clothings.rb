class CreateClothings < ActiveRecord::Migration[5.2]
  def change
    create_table :clothings do |t|
      t.string :gender, null: false
      t.string :brand, null: false
      t.string :category, null: false
      t.string :size, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end
