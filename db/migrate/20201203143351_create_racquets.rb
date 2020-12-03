class CreateRacquets < ActiveRecord::Migration[5.2]
  def change
    create_table :racquets do |t|
      t.string :brand
      t.string :level
      t.float :weight

      t.timestamps
    end
  end
end
