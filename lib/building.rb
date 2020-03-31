require 'pry'
require './lib/renter'
class Building
    attr_reader :units, :renters

  def initialize
    @units = []
    @renters =[]
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @units.each do |unit|
      if unit.renter != nil
    @renters << unit.renter.name
  end
  end
    @renters
end

end
