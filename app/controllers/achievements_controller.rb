class AchievementsController < ApplicationController
  before_filter :login_reguired, :except => [:index,:show]

  # GET /
  def index
    @achievements = Achievement.includes(:creator).limit(20)
  end

  # GET /new
  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.new(params[:achievement])

    tags = []
    params[:tags].split(',').each do |s|
      tag = s.strip
      # TODO: legyen batch
      tags << Tag.find_or_create_by_name(tag)
    end
    if @achievement.save
      redirect_to @achievement
    else
      render :new
    end
  end

  def destroy

  end

  def edit

  end

  def show
    @achievement = Achievement.find(params[:id])
  end
end
