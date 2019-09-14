class BlogsController < ApplicationController
  def index
    @blogs=Blog.all.order("created_at DESC")
    @likes = Like.new
  end
  def new
    @blog=Blog.new
  end
  def create
    Blog.create(blog_params)
    redirect_to blogs_path
  end
  def edit
    @blog=Blog.find(params[:id])
  end
  def destroy
    blog = Blog.find(params[:id])
    blog.destroy if blog.user_id == current_user.id
    redirect_to root_path

  end
  def update
    blog =Blog.find(params[:id])
    blog.update(blog_params) if blog.user_id == current_user.id
    redirect_to root_path
  end

  private
  def blog_params
    params.require(:blog).permit(:content).merge(user_id: current_user.id)
  end
end
