class Event < ApplicationRecord
  has_one :user
  has_one :guestlist
  accepts_nested_attributes_for :guestlist
  #has_one :location
  has_one_attached :cover_photo
  has_and_belongs_to_many :guests
  scope :sorted, lambda {order("created_at DESC")}
end
