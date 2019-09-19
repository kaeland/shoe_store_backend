class Product < ApplicationRecord
    belongs_to :inventory
    has_one :image, dependent: :destroy
end
