class Order < ApplicationRecord

    belongs_to :user

    validates :name, presence: true

    scope :latest, -> { order(created_at: :desc) }

end
