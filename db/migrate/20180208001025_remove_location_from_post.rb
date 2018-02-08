class RemoveLocationFromPost < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :address
    remove_column :posts, :city
    remove_column :posts, :state
    remove_column :posts, :country
    remove_column :posts, :longitude
    remove_column :posts, :latitude
  end
end
