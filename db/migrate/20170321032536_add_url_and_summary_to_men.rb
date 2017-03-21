class AddUrlAndSummaryToMen < ActiveRecord::Migration[5.0]
  def change
    add_column :men, :url, :string
    add_column :men, :summary, :string
  end
end
