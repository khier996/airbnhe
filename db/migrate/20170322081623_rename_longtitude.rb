class RenameLongtitude < ActiveRecord::Migration[5.0]
  def change
    rename_column :men, :longtitude, :longitude
  end
end
