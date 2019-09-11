class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.bigint :cart_product_id, foreign_key: true

      t.timestamps
    end
  end
end
