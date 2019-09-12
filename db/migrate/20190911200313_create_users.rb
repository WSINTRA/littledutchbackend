class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.text :address
      t.string :state
      t.string :city
      t.string :zip
      t.string :email
      t.string :avatar
      t.boolean :staff
      t.timestamps
    end
  end
end
