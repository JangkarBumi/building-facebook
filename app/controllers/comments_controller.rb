class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    redirect_to posts_path if @comment.save
  end

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
