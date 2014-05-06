class RegisterController < ApplicationController

  BLANK_FIELDS = "All fields must be completed.  Please try again."
  ALREADY_A_USER = "You're already a registered user.  Go to the home page to sign in or to reset your password."
  NO_MATCH = "Your password doesn't match your password_confirmation.  Please try again."
  WELCOME = "Hi. You've registered with Tally My Gear."

  def new_user
  end

  def register
    if (params[:user][:email].blank? or params[:user][:password].blank? or params[:user][:password_confirmation].blank?)
      # if params[:password].blank?
      # if params[:user][:email][:password][:password_confirmation].blank?
      flash.now[:alert] = BLANK_FIELDS
      # end
    elsif params[:user][:email] == User.find_by( params[:email] )
      flash.now[:alert] = ALREADY_A_USER
        # redirect_to root_url and return
    elsif (params[:user][:password] != params[:user][:password_confirmation])
      flash.now[:alert] = NO_MATCH
    else @user = User.new(user_params)
      @user.save
      return if log_user_in( @user, WELCOME)
    end

    if current_user
      redirect_to root_url
    else
      render :new_user
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end