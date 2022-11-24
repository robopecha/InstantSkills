class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @skills = Skill.all
  end

  def dashboard
    @skills = Skill.where(user_id: current_user)
    @bookings = Booking.where(user_id: current_user)
    @booked = Booking.joins(:skill).where("skills.user_id = ?", current_user)
  end
end
