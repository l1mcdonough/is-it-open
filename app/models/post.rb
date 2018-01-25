class Post < ApplicationRecord
  geocoded_by :full_address
  def full_address
    [address, city, state, country].compact.join(', ')
  end
end
