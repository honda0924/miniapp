class BlogsController < ApplicationController
  def index
    @blogs=Blog.all
  end
  def new
    @blog=Blog.new
  end
  def create
    Blog.create(blog_params)
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:content).merge(user_id: current_user.id)
  end
end
