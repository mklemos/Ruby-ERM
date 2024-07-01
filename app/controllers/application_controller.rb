class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    before_action :set_csrf_cookie
  
    def csrf_token
      render json: { csrfToken: form_authenticity_token }
    end
  
    private
  
    def set_csrf_cookie
      cookies['CSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
    end
  
    def verified_request?
      super || valid_authenticity_token?(session, request.headers['X-CSRF-Token'])
    end
  end
  