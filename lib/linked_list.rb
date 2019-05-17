require './lib/node'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
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
      string << family_string(walk.surname)
      while walk.next_node
        walk = walk.next_node
        string << family_string(walk.surname)
      end
    end

    string
  end

  def family_string(surname)
    "The #{surname} family"
  end
end
