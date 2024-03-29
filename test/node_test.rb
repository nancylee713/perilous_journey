require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test
  def test_it_exists
    node = Node.new("Burke")

    assert_instance_of Node, node
  end

  def test_attributes
    node = Node.new("Burke")

    assert_equal 'Burke', node.surname
    assert_nil node.next_node
  end

  def test_count
    node = Node.new("Burke")

    assert_equal 1, node.count
  end

  def test_append
    node = Node.new("Burke")
    node.append("Bike")

    assert_equal "Burke", node.surname
    assert_equal "Bike", node.next_node.surname
  end

  def test_to_string
    node = Node.new("Burke")

    assert_equal "The Burke family", node.to_string(node.surname)

    node.append("Rhodes")

    expected = "The Burke family, follwed by the Rhodes family"
    assert_equal expected, node.to_string(node.surname)
  end
end
