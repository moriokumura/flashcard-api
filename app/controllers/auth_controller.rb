class AuthController < ApplicationController
  before_action :authenticate, skip: [:login]

  # POST /login
  def login
    user = User.find_by_mail(params[:mail])
    if user&.authenticate(params[:password])
      # login
      user.expire_access_tokens
      @access_token = user.access_tokens.create!(token: SecureRandom.hex)
    else
      # failed
      @error = 'Wrong Mail or Password.'
    end
  end

  # GET /logout
  def logout
    @current_user.expire_access_tokens
  end

end
