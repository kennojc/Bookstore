class Book < ApplicationRecord
    has_many :reservations
    scope :get_available_books, -> { where(id: Reservation.reserved_book) }
end
