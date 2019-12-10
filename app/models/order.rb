class Order < ApplicationRecord

    belongs_to :user

    has_many :items
    has_many :products, through: :items

    validates :name, presence: true

    scope :latest, -> { order(created_at: :desc) }

    def add_item(product, quantity)
        @item = Item.new(order: self, product: product, quantity: quantity)
        @item
    end

end
