class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.float :size
      t.decimal :price
      t.string :name
      t.string :style
      t.string :color_way
      t.date :release_date

      t.timestamps
    end
  end
end
