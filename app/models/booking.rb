class Booking < ApplicationRecord
  belongs_to :superhero
  belongs_to :user
  has_many :reviews
end
