module Api
  class UsersController < ApiController
    # skip_before_action :authenticate_user!, only: [:create]

    def show

      user = User.find_by(nickname: params[:id])
      render json: { errors: 'not found '}, status: 422 unless render json: { id: user.id, nickname: user.nickname, avatar: user.avatar }
    end
  end
end