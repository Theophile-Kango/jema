class CommentsController < ApplicationController
  before_action :user_authorization, only: %i[destroy edit update]

  def create
    @post = Post.find(params[:article_id])
    @comment = @post.comments.new(params_comment)
    if @comment.save
        redirect_to @post
    else
        redirect_to @post
    end
  end

  def destroy
    @article = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash.alert = 'comment, deleted!'
    redirect_to @post
  end

  private
  def params_comment
      params.require(:comment).permit(:content, :user_id)
  end

  def user_authorization
      return if current_user.comments.find_by_id(params[:id])
      flash.alert = 'authorize author only'
      redirect_to :root
  end
end
