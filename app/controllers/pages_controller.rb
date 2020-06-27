class PagesController < ApplicationController
  def my_posts
    @posts = current_user.posts.order('created_at Desc')
  end
  
  def pending_post
    @posts = Post.all.where(is_available: false).order('created_at Desc')
  end
  
end
