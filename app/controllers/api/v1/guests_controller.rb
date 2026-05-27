class Api::V1::GuestsController < ApplicationController
  skip_forgery_protection

  def create
    guest = Guest.new(guest_params)

    if guest.save
      render json: { message: "RSVP recibido" }, status: :created
    else
      render json: { errors: guest.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :assistance, :comment)
  end
end
