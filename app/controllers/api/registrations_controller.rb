module Api
  class RegistrationsController < Devise::RegistrationsController
  
    # def create
    #   @user = User.new(create_user_params).save
  
    #   return register_failed unless @user
    #   register_success
    # end
  
    private
  
    # def create_user_params
    #   params.require(:user).permit(
    #     :nickname, 
    #     :email, 
    #     :password,
    #     :password_confirmation,
    #   )
    # end
  
    # def respond_with(resource, _opts = {})
    #   resource.persisted? ? register_success : register_failed
    # end
  
    # def register_success
    #   render json: { message: 'Signed up.' }
    # end
  
    # def register_failed
    #   render json: { message: 'Signed up failure.' }
    # end
  end
end