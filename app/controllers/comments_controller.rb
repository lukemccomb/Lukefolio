class CommentsController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    @comment = Comment.new(allowed_parameters)
    @comment.image_id = params[:image_id]
    @comment.user_id = session[:user_id]
    @comment.save
    redirect_to image_path(params[:image_id])
  end

  private

  def allowed_parameters
    params.require(:comment).permit(:comment)
  end
end