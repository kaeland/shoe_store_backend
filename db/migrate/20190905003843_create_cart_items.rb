class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.references :cart
      t.references :line_item

      t.timestamps
    end
  end
end
