class CreateRacquets < ActiveRecord::Migration[5.2]
  def change
    create_table :racquets do |t|
      t.string :brand, null: false
      t.string :level, null: false
      t.float :weight, null: false

      t.timestamps
    end
  end
end
