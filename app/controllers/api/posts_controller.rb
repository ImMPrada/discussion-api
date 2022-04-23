module Api
  class PostsController < ApiController
   

    def index
      @posts = Post.main_posts
    end

    def create
      @post = Post.new(post_params)
      render json: { errors: @post.errors.full_messages }, status: 422 unless @post.save
    end

    def update
      @post = Post.find(params[:id])
    
      @post.assign_attributes(post_params)

      render json: { errors: @post.errors.full_messages }, status: 422 unless @post.save
    end

    def destroy
      @post = Post.find(params[:id]).destroy
      
      render json: {}
    end
    
    private

    def post_params
      params.require(:post).permit(:content, :receiver_id, :user_id)
    end
  end
end