class AddUserIdToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :user_id, :interger
  end
end
