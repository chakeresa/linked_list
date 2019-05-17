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
    while walk.next_node
      count += 1
      walk = walk.next_node
    end
  end
end
