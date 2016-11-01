class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node=nil)
    @data = data
    @next_node = next_node
  end

  def next
    self.next_node
  end
end

 class LinkedList
  attr_accessor :head, :data

  def initialize(data)
    @head = Node.new(data)
  end

  # def head
  #   self.data
  # end

  def index_at(index)
    current = self.head
    index.times do
      return nil unless current.next
      current = current.next

    end
    current.data

  end

   def insert_at_index(index, data)
     current = self.head
     new_next = self.head.next

       (index-1).times do
          if new_next == nil
            current.next_node = Node.new(nil, nil)
          end
            new_next = current.next.next
            current = current.next
          end
          current.next_node = Node.new(data, new_next)
    end



  def unshift(data)
    current = self.head
    self.head = Node.new(data, current)
  end

  def push(data)
    current = self.head
    until current.next == nil
      current = current.next
    end
    current.next_node = Node.new(data, nil)
 end
end
