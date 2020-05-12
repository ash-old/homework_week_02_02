require('minitest/autorun')
require('minitest/reporters')
require_relative('../fish')
require_relative('../bears')
require_relative('../river')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestClassRiver < MiniTest::Test


  def setup()
    @river = River.new('Clyde')
    @fish1 = Fish.new('Fred')
    @fish2 = Fish.new('Gus')
  end

def test_get_name
  assert_equal('Clyde', @river.name)
end

def test_river_capacity
  assert_equal([], @river.capacity)
end

def test_add_fish
  @river.add_fish(@fish1)
  @river.add_fish(@fish2)
  assert_equal(2, @river.capacity.size)
end

def test_remove_fish
  @river.remove_fish()
  assert_equal(0, @river.capacity.size)
end






end
