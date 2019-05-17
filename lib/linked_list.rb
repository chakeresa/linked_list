require './lib/node'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
  end

  def append(data)
    if @head
      walk = @head
      while walk.next_node
        walk = walk.next_node
      end
      walk.next_node = Node.new(data)
    else
      @head = Node.new(data)
    end
  end

  def count
    walk = @head
    count = 0
    if walk
      count += 1
      while walk.next_node
        count += 1
        walk = walk.next_node
      end
    end
    count
  end

  def to_string
    walk = @head
    string = ""

    if walk
      string << "The #{walk.surname} family"
      while walk.next_node
        walk = walk.next_node
        string << ", followed by " + family_string(walk.surname)
      end
    end

    string
  end

  def family_string(surname)
    "the #{surname} family"
  end
end
