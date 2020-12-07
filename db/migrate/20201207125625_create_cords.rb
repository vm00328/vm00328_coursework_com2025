class CreateCords < ActiveRecord::Migration[5.2]
  def change
    create_table :cords do |t|
      t.belongs_to :racquet, foreign_key: true
      t.string :name
      t.string :colour
      t.string :level

      t.timestamps
    end
  end
end
