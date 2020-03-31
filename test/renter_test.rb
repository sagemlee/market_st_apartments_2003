require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require 'pry'

class RenterTest < Minitest::Test

  def test_it_exists
    renter1 = Renter.new("Jessie")
  assert_instance_of Renter, renter1
  end

  def test_it_has_readable_attributes
    renter1 = Renter.new("Jessie")
    assert_equal "Jessie", renter1.name
  end

  def test_apartment_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_instance_of Apartment, unit1
  end

    def test_apartment_has_readable_attributes
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      assert_equal "A1", unit1.number
      assert_equal 1200, unit1.monthly_rent
      assert_equal 1, unit1.bathrooms
      assert_equal 1, unit1.bedrooms
    end
    def test_it_can_add_renter
      assert_equal nil , unit1.renter
      unit1.add_renter(renter1)
      assert_equal renter1, unit1.renter 
    end

end
