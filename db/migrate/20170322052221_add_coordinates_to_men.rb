class AddCoordinatesToMen < ActiveRecord::Migration[5.0]
  def change
    add_column :men, :address, :string
    add_column :men, :latitude, :float
    add_column :men, :longtitude, :float
  end
end
