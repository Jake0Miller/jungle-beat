require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedListTest < MiniTest::Test
  def setup
    @list = LinkedList.new
    @list.append('blop')
    @list.prepend('shu')
    @list.prepend('shi')
    @list.prepend('woo')
    @list.prepend('deep')
  end

  def test_find
    assert_equal 'deep woo shi shu blop', @list.to_string
    assert_equal 'shi', @list.find(2, 1)
    assert_equal 'woo shi shu', @list.find(1, 3)
  end

  def test_pop
    assert_equal 'blop', @list.pop
    assert_equal 'shu', @list.pop
    assert_equal 'deep woo shi', @list.to_string
  end

  def test_includes?
    assert @list.includes?('deep')
    refute @list.includes?('dep')
  end
end
