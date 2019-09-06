class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :name
      t.decimal :total
      t.references :user
      
      t.timestamps
    end
  end
end
