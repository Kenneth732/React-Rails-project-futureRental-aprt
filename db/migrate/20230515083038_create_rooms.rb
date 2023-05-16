class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.decimal :size
      t.decimal :price
      t.references :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
