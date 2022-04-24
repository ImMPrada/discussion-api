module Api
  class ApiController < ApplicationController
    before_action :authenticate_user!

    
    def authenticate_user!
      return if user_signed_in?

      head 401 and return
    end
  end
end