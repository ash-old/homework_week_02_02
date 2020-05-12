require('minitest/autorun')
require('minitest/reporters')
require_relative('../fish')
require_relative('../river')
require_relative('../bears')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestClassFish < MiniTest::Test


  def setup
    @fish1 = Fish.new('Fred')
  end

  def test_get_fish_name
    assert_equal('Fred', @fish1.name)
  end






end
