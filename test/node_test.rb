require './test/test_helper'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_surname_and_next_node
    assert_equal "Burke", @node.surname
    assert_nil @node.next_node
  end

  def next_node_can_be_added
    west = Node.new("West")
    @node.next_node = west

    assert_equal west, @node.next_node
  end
end
