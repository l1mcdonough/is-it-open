require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  def test_geocoder_gets_coordinates
    testPost = Location.create!(address: '767 Chief Justice Cushing Highway', city: 'Cohasset', state: 'MA', country: 'United States')
    assert approximatelyEqual?(testPost.latitude, 42.222389)
    assert approximatelyEqual?(testPost.longitude, -70.805390)
  end
end
