class PostsController < ApplicationController
  def index
        # ***** 以下を追加 *****
    @posts = Post.order(:id)
    # ***** 以上を追加 *****
  end

  def new
         # ***** 以下を追加 *****
    @post = Post.new
    # ***** 以上を追加 *****
  end

  def create
        # ***** 以下を追加 *****
    Post.create!(post_params)
    redirect_to posts_path
    # ***** 以上を追加 *****
  end
   # ***** 以下を追加 *****
  private

  def post_params
    params.require(:post).permit(:genre, :content)
  end
  # ***** 以上を追加 *****

end
