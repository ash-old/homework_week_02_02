require('minitest/autorun')
require('minitest/reporters')
require_relative('../bears')
require_relative('../fish')
require_relative('../river')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestClassBears < MiniTest::Test

  def setup()
    @bear = Bears.new('Yogi', 'Grizzly')
    @fish1 = Fish.new('Fred')
    @river = River.new('Clyde')
  end

def test_name
  assert_equal('Yogi', @bear.name)
end

def test_empty_stomach
  assert_equal([], @bear.stomach)
end

def test_eat_fish
  @river.add_fish(@fish1)
  @bear.eat_fish(@river)
  assert_equal(1, @bear.stomach.count)
  assert_equal(0, @river.capacity.count)
end

def test_roar
  assert_equal("Roar!", @bear.roar)
end

def test_food_count()
  @river.add_fish(@fish1)
  @bear.eat_fish(@river)
  assert_equal(1, @bear.food_count)
end




end
