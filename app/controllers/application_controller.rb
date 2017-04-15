class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      @current_user = AccessToken.not_expired.find_by_token(token)&.user
    end
  end
end
