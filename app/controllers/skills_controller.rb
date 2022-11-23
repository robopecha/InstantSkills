class SkillsController < ApplicationController
  before_action :set_skill, only: %i[show edit update destroy]

  def index
    @skills = Skill.where("user_id != ?", current_user.id)
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    if @skill.save
      redirect_to skill_path(@skill)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.update(skill_params)
    redirect_to skill_path(@skill)
  end

  def destroy
    @skill.destroy
    redirect_to skills_path, status: :see_other
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :description, :price, :level, :user_id)
  end

  def set_skill
    @skill = Skill.find(params[:id])
  end
end
