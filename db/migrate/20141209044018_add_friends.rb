class AddFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.references :user,   null: false
      t.references :friend, null: false
    end
  end
end
