class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :flavor
      t.integer :initial_price
      t.integer :full_price

      t.timestamps
    end
  end
end
