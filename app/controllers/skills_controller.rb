class SkillsController < ApplicationController
  before_action :set_skill, only: %i[show edit update destroy]

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
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
  end

  def update
    @skill = Skill.update(skill_params)
  end

  def destroy
    @skill.destroy
    redirect_to skills_path
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :description, :price, :level, :user_id)
  end

  def set_skill
    @skill = Skill.find(params[:id])
  end
end
