class PostsController < ApplicationController
  def list
    @posts = Post.all
  end

  def new_post
    @states = ISO3166::Country.new('US').states.keys
  end
end
