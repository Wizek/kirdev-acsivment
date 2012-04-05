class AchievementsController < ApplicationController
  before_filter :login_reguired, :except => [:index,:show]
  skip_authorization_check :only => [:show]

  # GET /
  def index
    authorize! :read, Achievement
    @achievements = Achievement.includes(:creator).limit(20)
  end

  # GET /new
  def new
    @achievement = Achievement.new
    authorize! :create, @achievement
  end

  def create
    @achievement = Achievement.new(params[:achievement])
    authorize! :create, @achievement
    @achievement.creator_id = session[:user_id]
    # alapjaraton az acsivmentet keszito felhasznalo a felugyelo is
    @achievement.supervisor_id = session[:user_id]

    # tag-ek feldolgozasa
    # TODO: legyen auto complete
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
    authorize! :destroy, Achievement
    Achievement.delete(params[:id])
  end

  def edit
    @achievement = Achievement.find(params[:id])
    authorize! :update, @achievement
  end

  def show
    @achievement = Achievement.find(params[:id])
  end
end
