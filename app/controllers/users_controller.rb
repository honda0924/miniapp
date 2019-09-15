class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @name=@user.name
    @blogs=@user.blogs.order("created_at DESC")
    @likeblogs = @user.liked_blogs.order("created_at DESC")
  end

end
