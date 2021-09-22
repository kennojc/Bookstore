class ReservationController < ApplicationController
    before_action :set_reservation, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

  def index
    @reservations = Reservation.all
    end

  def new
    @reservation = Reservation.new
  end

  def show
  end

  def edit
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save!
    else
    end
  end

  def update
    if @reservation.update!(reservation_params)
    else
    end
  end

  def destroy
    @reservation.destroy!
  end

  private
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit(:user_id, :book_id)
    end
end
end
