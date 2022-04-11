module Api
  class PostsController < ApiController
    def index
      @posts = Post.where(receiver_id: nil)

    end
  end
end