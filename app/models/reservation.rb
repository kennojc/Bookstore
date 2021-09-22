class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :book

  scope :reservation, -> (user_id) { where("user_id = ?", user_id) }
  scope :reserved_book, -> { all.pluck(:book_id) }
end
