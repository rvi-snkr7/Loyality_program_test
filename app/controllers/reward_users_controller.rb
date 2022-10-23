class RewardUsersController < ApplicationController
  before_action :set_reward_user, only: %i[ show edit update destroy ]

  # GET /reward_users or /reward_users.json
  def index
    @reward_users = RewardUser.all
  end

  # GET /reward_users/1 or /reward_users/1.json
  def show
  end

  # GET /reward_users/new
  def new
    @reward_user = RewardUser.new
  end

  # GET /reward_users/1/edit
  def edit
  end

  # POST /reward_users or /reward_users.json
  def create
    @reward_user = RewardUser.new(reward_user_params)

    respond_to do |format|
      if @reward_user.save
        format.html { redirect_to reward_user_url(@reward_user), notice: "Reward user was successfully created." }
        format.json { render :show, status: :created, location: @reward_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reward_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reward_users/1 or /reward_users/1.json
  def update
    respond_to do |format|
      if @reward_user.update(reward_user_params)
        format.html { redirect_to reward_user_url(@reward_user), notice: "Reward user was successfully updated." }
        format.json { render :show, status: :ok, location: @reward_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reward_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reward_users/1 or /reward_users/1.json
  def destroy
    @reward_user.destroy

    respond_to do |format|
      format.html { redirect_to reward_users_url, notice: "Reward user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward_user
      @reward_user = RewardUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reward_user_params
      params.require(:reward_user).permit(:name)
    end
end
