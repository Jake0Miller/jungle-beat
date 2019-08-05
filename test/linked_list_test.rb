require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedListTest < MiniTest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_head_node_defaults_to_nil
    assert_nil @list.head
    assert_equal 0, @list.count
  end

  def test_append_node
    @list.append('doop')

    assert_equal 'doop', @list.head.data
    assert_nil @list.head.next
    assert_equal 1, @list.count

    @list.append('deep')

    assert_equal 'deep', @list.head.next.data
    assert_equal 2, @list.count
  end

  def test_to_string
    @list.append('doop')

    assert_equal 'doop', @list.to_string

    @list.append('deep')

    assert_equal 'doop deep', @list.to_string
  end
end
