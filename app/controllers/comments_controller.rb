class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to posts_path
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
