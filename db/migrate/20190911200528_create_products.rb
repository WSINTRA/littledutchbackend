class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :rating
      t.string :breed
      t.text :description
      t.decimal :price
      t.string :image
      t.boolean :in_menu

      t.timestamps
    end
  end
end
