class ProfilesController < ApplicationController
  require 'domain/repositories/forumrepository'
  require 'domain/entities/forum'
  require 'domain/repositories/commentfrepository'
  require 'domain/entities/commentf'  
  require 'domain/repositories/postrepository'
  require 'domain/entities/post'
  require 'domain/repositories/profilerepository'
  require 'domain/entities/profile'  
  require 'domain/repositories/orderrepository'
  require 'domain/entities/order'
  before_filter :authenticate_user!

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = current_user.profiles
    @posts = current_user.posts
    @forums = current_user.forums
    @orders = current_user.orders
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profiles }
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile = current_user.profiles.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/new
  # GET /profiles/new.json
  def new
    @profile = current_user.profiles.new(params[:profile])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/1/edit
  def edit
    @profile = current_user.profiles.find(params[:id])
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = current_user.profiles.new(params[:profile])

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render json: @profile, status: :created, location: @profile }
      else
        format.html { render action: "new" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profiles/1
  # PUT /profiles/1.json
  def update
    @profile = current_user.profiles.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile = current_user.profiles.find(params[:id])
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end

#  def myprofile
#    profile = Profile.find_by_user_id(current_user.id)
#    if profile.nil?
#      redirect_to "/profiles/new"
#    else
#      @user = User.find(current_user.id)
#      @profile = Profile.find_by_user_id(@user.id)
#      redirect_to "/profiles/#{@profile.id}"
#    end
#  end
end
