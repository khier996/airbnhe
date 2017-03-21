class AddCityToMen < ActiveRecord::Migration[5.0]
  def change
    add_column :men, :city, :string
  end
end
