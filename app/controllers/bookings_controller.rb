class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.skill = Skill.find(params[:skill_id])
    if @booking.save
      # redirect_to skill_path(@booking.skill)
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.status_confirmed!
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to bookings_path
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
