class Booking < ApplicationRecord
  belongs_to :superhero
  belongs_to :user
end
