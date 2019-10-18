require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_attributes
    assert_nil @list.head
  end

  def test_append_adds_a_node_to_the_list
    assert_instance_of Node, @list.append('West')
  end

  def test_append_list_head_is_a_node
    @list.append('West')

    assert_equal Node, @list.head.class
    assert_equal 'West', @list.head.surname
  end

  def test_append_the_next_node_is_nil
    @list.append('West')

    assert_nil @list.head.next_node
  end

  def test_count_number_of_nodes_in_a_list
    @list.append('West')

    assert_equal 1, @list.count

    @list.append('East')

    assert_equal 2, @list.count
  end

  def test_to_string_generates_a_string_from_the_list
    @list.append('West')

    assert_equal 'The West family', @list.to_string
  end
end
