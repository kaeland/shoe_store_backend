class AddImageUrlToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :image_url, :string
  end
end
