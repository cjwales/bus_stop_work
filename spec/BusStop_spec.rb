require('minitest/autorun')
require('minitest/rg')
require_relative('../BusStop.rb')
require_relative('../Person.rb')

class BusStopTest < MiniTest::Test

def setup()
@busstop1 = BusStop.new("George Street")

@person1 = Person.new("Stuart", 52)
@person2 = Person.new("Neil", 32)
@person3 = Person.new("Jamie", 12)

end
#
# def test_add_person_to_queue()
#   assert_equal(1, @busstop1.)
# end
def test_add_person_to_queue()
  @busstop1.add_person_to_queue(@person3)
  assert_equal(1, @busstop1.queue.length())
end

def test_board_all_passengers()
assert_equal(3,@bus.)
end




end
