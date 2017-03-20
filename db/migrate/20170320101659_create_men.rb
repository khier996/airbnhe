class CreateMen < ActiveRecord::Migration[5.0]
  def change
    create_table :men do |t|
      t.string :name, null: false
      t.integer :height, null: false
      t.integer :weight, null: false
      t.date :birthdate, null: false
      t.text :description, null: false
      t.text :services, array: true, default: []
      t.integer :price, null: false

      t.timestamps
    end
  end
end
