class PostsController < ApplicationController
  def list
    @posts = Post.all
  end

  def new_post
    @states = ISO3166::Country.new('US').states.keys
  end

  def create_post
    location_row = fill_database Location, :address, :city, :state
    location_row.save!
    post_row = fill_database Post, :store, :tobacco, :gas, :alcohol
    post_row.update location: location_row
    post_row.save!
  end

  def fill_database(table_class, *symbols)
    row = table_class.create
    symbols.each do |sym|
      row.update(sym => params[sym])
    end
    row
  end
end
