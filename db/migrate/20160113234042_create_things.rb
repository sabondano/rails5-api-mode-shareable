class CreateThings < ActiveRecord::Migration[5.0]
  def change
    create_table :things do |t|
      t.string :name
      t.integer :price_cents
      t.integer :parts

      t.timestamps
    end
  end
end
