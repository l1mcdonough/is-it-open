class AddAddressCityStateAndCountryToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :address, :string
    add_column :posts, :city, :string
    add_column :posts, :state, :string
    add_column :posts, :country, :string
  end
end
