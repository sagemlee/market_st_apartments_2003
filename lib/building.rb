require 'pry'
require './lib/renter'
class Building
    attr_reader :units, :renters, :rented_units

  def initialize
    @units = []
    @renters =[]
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @renters =[]
    @units.each do |unit|
      if unit.renter != nil
    @renters << unit.renter.name
  end
  end
    @renters
end

def average_rent
  unit_rent = @units.map do |unit|
    unit.monthly_rent
  end
  unit_rent.sum/unit_rent.count.to_f
end
def rented_units
    @units.each do |unit|
  if unit.renter != nil
    @rented_units << unit
  end
end
@rented_units
end

  def renter_with_highest_rent
    rent = @rented_units.map do |unit|
      unit.monthly_rent
    end
    rent.max 



end
