class AddUsersToClothings < ActiveRecord::Migration[5.2]
  def up
    add_reference :clothings, :user, index: true
    Clothing.reset_column_information
    user = User.first
    Clothing.all.each do |clothing|
      clothing.user_id = user.id
      clothing.save!
    end
    change_column_null :clothings, :user_id, false
    add_foreign_key :clothings, :users
  end
  def down
    remove_foreign_key :clothings, :users
    remove_reference :clothings, :user, index: true
  end
end
