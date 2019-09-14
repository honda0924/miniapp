class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(blog_id: params[:blog_id])
    redirect_to root_path
  end
  def destroy
    @like = Like.find_by(user_id: current_user.id, blog_id: params[:blog_id])
    @like.destroy
    redirect_to root_path
  end
end
