class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(string)
    string.split.each { |str| @list.append(str) }
  end
end
