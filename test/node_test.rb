# > require "./lib/node"
# > node = Node.new("Burke")
# => <Node @surname="Burke" @next_node=nil #5678904567890>
# > node.surname
# => "Burke"
# > node.next_node
# => nil

require './test/test_helper'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end
end
