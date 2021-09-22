class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @books = Book.get_available_books
  end

  def show
    @book = Book.find(params[:id])
  end

  def user_reservation
    @reservations = Reservation.reservations(current_user.id)
end

def reserved
    @book = Book.find(params[:book_id])
    @reservation = Reservation.new(
        user_id: current_user.id,
        book_id: params[:book_id]
        )
    if @reservation.save!
    else
    end
end

def remove_reserve
    @reservation = Reservation.find(params[:id])
    @reservation.destroy!
end

end 
