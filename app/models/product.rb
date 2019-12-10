class Product < ApplicationRecord

    belongs_to :user
    has_many :items
    has_many :orders, through: :items

    mount_uploader :image, ProductImageUploader

    validates :name, presence: true
    validates :price, presence: true

    scope :latest, -> { order(created_at: :desc) }

end
