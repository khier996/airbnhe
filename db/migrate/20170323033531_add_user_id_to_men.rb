class AddUserIdToMen < ActiveRecord::Migration[5.0]
  def change
    add_column :men, :user_id, :integer
  end
end
