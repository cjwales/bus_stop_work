require('minitest/autorun')
require('minitest/rg')
require_relative('../Bus.rb')
require_relative('../Person.rb')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal", "brum brum")
    @person1 = Person.new("Stuart", 52)
    @person2 = Person.new("Neil", 32)
    @person3 = Person.new("Jamie", 12)
  end

  def test_drive()
    assert_equal("brum brum", @bus.drive())
  end

  def test_passenger_count()
    assert_equal(0, @bus.passenger_count())
  end

  def test_pickup_passenger()
    @bus.pickup_passenger(@person1)
    assert_equal(1, @bus.passenger_count())
  end

  def test_dropoff_passenger()
    @bus.dropoff_passenger(@person1)
    assert_equal(0, @bus.passenger_count())
  end

  def test_remove_all_passengers()
    @bus.empty_bus()
    assert_equal(0, @bus.passenger_count())

  end

end
