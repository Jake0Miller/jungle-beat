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
    reutrn nil if @head.nil?
    cur_node = @head
    until position == 0
      cur_node = cur_node.next
      position -= 1
    end
    find_string(cur_node, num)
  end

  def find_string(node, num)
    ans = node.data
    until num == 1
      return ans if node.next.nil?
      node = node.next
      ans += ' ' + node.data
      num -= 1
    end
    ans
  end

  def pop
    return nil if @head.nil?
    return pop_head_node if @head.next.nil?
    cur_node = @head
    until cur_node.next.next.nil?
      cur_node = cur_node.next
    end
    remove_and_return_node(cur_node)
  end

  def pop_head_node
    ans = @head.data
    @head = nil
    ans
  end

  def remove_and_return_node(node)
    ans = node.next.data
    node.next = nil
    ans
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
