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
    if @head.nil?
      @head = Node.new(data)
    else
      new_head(data)
    end
  end

  def new_head(data)
    temp_node = Node.new(data)
    temp_node.next = @head
    @head = temp_node
  end

  def insert(position, data)
    if position == 0
      new_head(data)
    else
      insert_node(position, Node.new(data))
    end
  end

  def insert_node(position, node)
    cur_node = @head
    until position == 1
      return cur_node.next = node if cur_node.next.nil?
      cur_node = cur_node.next
      position -= 1
    end
    node.next = cur_node.next
    cur_node.next = node
  end

  def find(position, num)

  end

  def pop

  end

  def includes?(data)
    return false if @head.nil?
    cur_node = @head
    until cur_node.nil?
      return true if cur_node.data == data
      cur_node = cur_node.next
    end
    false
  end
end
