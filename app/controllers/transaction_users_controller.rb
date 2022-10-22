# frozen_string_literal: true

class TransactionUsersController < ApplicationController
  before_action :set_transaction_user, only: %i[show edit update destroy]

  # GET /transaction_users or /transaction_users.json
  def index
    @transaction_users = TransactionUser.all
  end

  # GET /transaction_users/1 or /transaction_users/1.json
  def show; end

  # GET /transaction_users/new
  def new
    @transaction_user = TransactionUser.new
  end

  # GET /transaction_users/1/edit
  def edit; end

  # POST /transaction_users or /transaction_users.json
  def create
    @transaction_user = TransactionUser.new(transaction_user_params)

    respond_to do |format|
      if @transaction_user.save
        format.html do
          redirect_to transaction_user_url(@transaction_user), notice: 'Transaction user was successfully created.'
        end
        format.json { render :show, status: :created, location: @transaction_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_users/1 or /transaction_users/1.json
  def update
    respond_to do |format|
      if @transaction_user.update(transaction_user_params)
        format.html do
          redirect_to transaction_user_url(@transaction_user), notice: 'Transaction user was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @transaction_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_users/1 or /transaction_users/1.json
  def destroy
    @transaction_user.destroy

    respond_to do |format|
      format.html { redirect_to transaction_users_url, notice: 'Transaction user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transaction_user
    @transaction_user = TransactionUser.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def transaction_user_params
    params.require(:transaction_user).permit(:point)
  end
end
