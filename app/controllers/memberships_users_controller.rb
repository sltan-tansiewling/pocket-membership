class MembershipsUsersController < ApplicationController

  before_action :set_memberships_user, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /memberships_users
  # GET /memberships_users.json
  def index
    @memberships_users = MembershipsUser.where(user_id: current_user.id)
  end

  # GET /memberships_users/1
  # GET /memberships_users/1.json
  def show
    # @memberships_user = MembershipsUser.find(params[:id])
  end

  # GET /memberships_users/new
  def new
    @memberships_user = MembershipsUser.new
  end

  # GET /memberships_users/1/edit
  def edit
    @memberships_user = MembershipsUser.find(params[:id])
  end

  # POST /memberships_users
  # POST /memberships_users.json
  def create
    @memberships_user = MembershipsUser.new(memberships_user_params)
    @memberships_user.membership_id = 2
    @memberships_user.user_id = current_user.id

    # @memberships = Membership.all
    # puts "Last index >>>>>"
    # counter = @memberships.size()
    # puts counter

    puts @memberships_user_params.inspect

    respond_to do |format|
      if @memberships_user.save
        format.html { redirect_to @memberships_user, notice: 'Memberships user was successfully created.' }
        format.json { render :show, status: :created, location: @memberships_user }
      else
        format.html { render :new }
        format.json { render json: @memberships_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memberships_users/1
  # PATCH/PUT /memberships_users/1.json
  def update
    @memberships_user = MembershipsUser.find(params[:id])
    @memberships_user.user_id = current_user.id

    puts @memberships_user.inspect

    respond_to do |format|
      if @memberships_user.update(memberships_user_params)
        format.html { redirect_to @memberships_user, notice: 'Memberships user was successfully updated.' }
        format.json { render :show, status: :ok, location: @memberships_user }
      else
        format.html { render :edit }
        format.json { render json: @memberships_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memberships_users/1
  # DELETE /memberships_users/1.json
  def destroy
    @memberships_user.destroy
    respond_to do |format|
      format.html { redirect_to memberships_users_url, notice: 'Memberships user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memberships_user
      @memberships_user = MembershipsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memberships_user_params
      params.require(:memberships_user).permit(:store, :status, :points, :rewards, :membership_id)
    end
end
