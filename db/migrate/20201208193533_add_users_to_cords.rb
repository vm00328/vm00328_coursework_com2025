class AddUsersToCords < ActiveRecord::Migration[5.2]
  def up
    add_reference :cords, :user, index: true
    Cord.reset_column_information
    user = User.first
    Cord.all.each do |cord|
      cord.user_id = user.id
      cord.save!
    end
    change_column_null :cords, :user_id, false
    add_foreign_key :cords, :users
  end
  def down
    remove_foreign_key :cords, :users
    remove_reference :cords, :user, index: true
  end
end
