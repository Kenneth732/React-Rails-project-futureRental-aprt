class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string :image
      t.decimal :price
      t.integer :rate
      t.string :category
      t.references :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
