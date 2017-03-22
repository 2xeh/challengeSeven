class Customer < ApplicationRecord
  belongs_to :province

  validates :full_name, :phone_number, presence: true
  validates :phone_number, length: {minimum: 7}
  validates :image, length: {minimum: 5}
end
