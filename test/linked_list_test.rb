require './test/test_helper'

# > list.to_string
# => "The West family"

class LinkedListTest < Minitest::Test
  def setup
    @linked_list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @linked_list
  end

  def test_initialize
    assert_nil @linked_list.head
  end

  def test_append
    @linked_list.append("West")
    assert_instance_of Node, @linked_list.head
    assert_equal "West", @linked_list.head.surname
    assert_nil @linked_list.head.next_node
  end

  def test_count
    assert_equal 0, @linked_list.count

    @linked_list.append("Wesunt")

    assert_equal 1, @linked_list.count
  end
end