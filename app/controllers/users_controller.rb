class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    @count = User.count
  end

  #def show
  #end

  def new
    @user = User.new
  end

  # GET /users/1/edit
  #def edit
  #end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'Signature enregistrée!' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  #def update
  #  respond_to do |format|
  #    if @user.update(user_params)
  #      format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: 'edit' }
  #      format.json { render json: @user.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  #def destroy
  #  @user.destroy
  #  respond_to do |format|
  #    format.html { redirect_to users_url }
  #    format.json { head :no_content }
  #  end
  #end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :city)
    end
end
