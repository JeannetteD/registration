class RegistrationController < ApplicationController

  # TODO put in comment
  def index
  end

  # Sending information to the welcome page
  def register
    # Create a new user instance or object
    @user = User.new
    # Pulls in the full name from the form
    # and stores it in user instance
    @user.full_name = params[:full_name]
    @user.street_address = params[:street_address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.postal_code = params[:postal_code]
    @user.country = params[:country]
    @user.email_address = params[:email_address]
    @user.user_id = params[:user_id]
    @user.email_address = params[:password]

  end

end
