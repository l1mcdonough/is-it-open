class AddAlcoholToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :alcohol, :boolean
  end
end
