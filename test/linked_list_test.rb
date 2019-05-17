require './test/test_helper'

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

  def test_multiple_appends
    @linked_list.append("West")
    hardy = @linked_list.append("Hardy")
    assert_equal hardy, @linked_list.head.next_node
  end

  def test_count
    assert_equal 0, @linked_list.count

    @linked_list.append("West")

    assert_equal 1, @linked_list.count

    @linked_list.append("Hardy")

    assert_equal 2, @linked_list.count
  end

  def test_to_string
    assert_equal "", @linked_list.to_string

    @linked_list.append("West")

    assert_equal "The West family", @linked_list.to_string

    @linked_list.append("Hardy")

    assert_equal "The West family, followed by the Hardy family", @linked_list.to_string
  end

  def test_prepend
    brooks = @linked_list.append("Brooks")
    @linked_list.append("Henderson")
    mckinney = @linked_list.prepend("McKinney")

    assert_equal mckinney, @linked_list.head
    assert_equal brooks, mckinney.next_node
    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", @linked_list.to_string
    assert_equal 3, @linked_list.count
  end

  # def test_insert
  #   brooks = @linked_list.append("Brooks")
  #   henderson = @linked_list.append("Henderson")
  #   mckinney = @linked_list.prepend("McKinney")
  #   lawson = @linked_list.insert(1, "Lawson")
  #
  #   assert_equal "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family", @linked_list.to_string
  # end

  def test_insert_with_index_0_prepends
    brooks = @linked_list.append("Brooks")
    @linked_list.append("Henderson")
    mckinney = @linked_list.insert(0, "McKinney")

    assert_equal mckinney, @linked_list.head
    assert_equal brooks, mckinney.next_node
    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", @linked_list.to_string
    assert_equal 3, @linked_list.count
  end

  def test_insert_with_index_greater_than_count_appends
    @linked_list.append("Brooks")
    henderson = @linked_list.append("Henderson")
    mckinney = @linked_list.insert(3, "McKinney")

    assert_equal mckinney, henderson.next_node
    assert_equal 3, @linked_list.count
  end
end