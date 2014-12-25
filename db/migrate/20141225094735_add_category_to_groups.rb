class AddCategoryToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :categories, :text
  end
end
