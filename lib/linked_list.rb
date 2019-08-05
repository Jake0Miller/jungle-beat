class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def count
    num_nodes = 0
    cur_node = @head
    until cur_node.nil?
      num_nodes += 1
      cur_node = cur_node.next
    end
    num_nodes
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      cur_node = @head
      until cur_node.next.nil?
        cur_node = cur_node.next
      end
      cur_node.next = Node.new(data)
    end
  end

  def to_string
    str = ''
    return str if @head.nil?
    cur_node = @head
    until cur_node.nil?
      str << cur_node.data + ' '
      cur_node = cur_node.next
    end
    str.chop
  end

  def prepend(data)

  end

  def insert(position,data)

  end
end
