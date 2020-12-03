class CreateClothings < ActiveRecord::Migration[5.2]
  def change
    create_table :clothings do |t|
      t.string :gender
      t.string :brand
      t.string :category
      t.string :size
      t.float :price

      t.timestamps
    end
  end
end
