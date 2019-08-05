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
    assert_nil @jungle.list.head
  end

  def test_append
    @jungle.append('deep doo ditt')

    assert_equal 'deep', @jungle.list.head.data
    assert_equal 'doo', @jungle.list.head.next.data

    @jungle.append('woo hoo shu')

    assert_equal 6, @jungle.count
  end
end
