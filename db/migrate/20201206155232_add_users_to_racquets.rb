class AddUsersToRacquets < ActiveRecord::Migration[5.2]
  def up
    add_reference :racquets, :user, index: true
    Racquet.reset_column_information
    user = User.first
    Racquet.all.each do |racquet|
      racquet.user_id = user.id
      racquet.save!
    end
    change_column_null :racquets, :user_id, false
    add_foreign_key :racquets, :users
  end
  def down
    remove_foreign_key :racquets, :users
    remove_reference :racquets, :user, index: true
  end
end
