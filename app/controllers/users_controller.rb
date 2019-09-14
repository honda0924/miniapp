class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @name=@user.name
    @blogs=@user.blogs
    @likes = Like.find_by(blog_id: params[:id],user_id: current_user.id)
  end

end
