class PostsController < ApplicationController
  def list
    @posts = Post.all
  end

  def new_post
    if not user_signed_in?
      redirect_to(new_user_session_path)
      flash[:error] = 'Must be signed in to post'
    end 
    @states = ISO3166::Country.new('US').states.keys
  end

  def create_post
    location_row = create_row Location, :address, :city, :state
    location_row.save!
    post_row = create_row Post, :store, :tobacco, :gas, :alcohol
    post_row.update location: location_row
    post_row.save!
  end

  def create_row(table_class, *permitted_params)
    table_sym = table_class.to_s.downcase.to_sym
    row = params.permit(*permitted_params)
    table_class.new(row)
  end
 
  end
