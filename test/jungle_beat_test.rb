require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'
require 'pry'

class JungleBeatTest < MiniTest::Test
  def setup
    @jungle = JungleBeat.new
  end

  def test_it_exists
    assert_instance_of JungleBeat, @jungle
  end

  def test_it_holds_a_linked_list
    assert_instance_of LinkedList, @jungle.list
  end
end
