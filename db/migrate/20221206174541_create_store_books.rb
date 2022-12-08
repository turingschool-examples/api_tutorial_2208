class CreateStoreBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :store_books do |t|
      t.references :store, foreign_key: true
      t.references :book, foreign_key: true
      t.integer :book_price
      t.integer :quantity

      t.timestamps
    end
  end
end
