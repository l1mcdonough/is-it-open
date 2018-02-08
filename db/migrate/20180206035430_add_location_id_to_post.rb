class AddLocationIdToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :location_id, :integer
  end
end
