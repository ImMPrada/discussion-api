module Api
  class ReactionsController < ApiController
    def create
      reaction = user.react_to(post, reaction_params[:reaction_type])
      render json: { errors: reaction.errors.full_messages }, status: 422 unless reaction.valid?
    end

    private

    def reaction_params
      params.require(:reaction).permit(:post_id, :user_id, :reaction_type)
    end

    def post
      @post ||= Post.find(reaction_params[:post_id])
    end

    def user
      @user ||= User.find(reaction_params[:user_id])
    end
  end
end