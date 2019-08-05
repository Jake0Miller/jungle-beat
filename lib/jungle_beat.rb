class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(string)
    string.split.each { |str| @list.append(str) }
  end

  def count
    @list.count
  end

  def generate_play
    "say -r 500 -v Boing '#{@list.to_string}'"
  end

  def play
    `say -r 500 -v Boing '#{@list.to_string}'`
  end
end
