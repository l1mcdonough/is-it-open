class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :user
      t.string :store
      t.float :latitude
      t.float :longitude
      t.boolean :christmas
      t.boolean :thanksgiving
      t.boolean :gas
      t.boolean :tobacco
      t.timestamps
    end
  end
end
