class AddSuperherosToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :superhero, foreign_key: true
    add_reference :superheros, :user, foreign_key: true
  end
end
