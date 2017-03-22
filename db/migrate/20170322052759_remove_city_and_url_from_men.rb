class RemoveCityAndUrlFromMen < ActiveRecord::Migration[5.0]
  def change
    remove_column :men, :city, :string
    remove_column :men, :url, :string
  end
end
