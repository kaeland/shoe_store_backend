class User < ApplicationRecord
    has_secure_password

    has_many :carts
    has_many :cart_items, through: :carts
    has_many :line_items, through: :cart_items 
    # validates :username, uniqueness: { case_sensitive: false }

end
