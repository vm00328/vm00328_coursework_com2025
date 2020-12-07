class CreateCords < ActiveRecord::Migration[5.2]
  def change
    create_table :cords do |t|
      t.belongs_to :racquet, foreign_key: true
      t.string :name, null:false
      t.string :colour, null:false

      t.timestamps null:false
    end
  end
end
