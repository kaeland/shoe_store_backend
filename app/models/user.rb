class User < ApplicationRecord
    has_secure_password
    has_one :inventory
    has_many :products, through: :inventory
    # validates :username, uniqueness: { case_sensitive: false }

    has_many :sales, foreign_key: :seller_id, class_name: "Exchange"
    has_many :buyers, through: :sales

    has_many :purchases, foreign_key: :buyer_id, class_name: "Exchange"
    has_many :sellers, through: :purchases
end
