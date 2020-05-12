class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception

  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :rescue404
  private
    def rescue404(e)
      @exception = e
      render template: 'error/not_found', status: 404
    end
  
  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
    username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end