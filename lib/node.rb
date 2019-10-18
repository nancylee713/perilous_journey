class Node
  attr_reader :surname
  attr_accessor :next_node

  def initialize(surname, next_node=nil)
    @surname = surname
    @next_node = next_node
  end

  def count(num=0)
    num += 1
    @next_node.nil? ? num : @next_node.count(num)
  end

  def append(data)
    if self.next_node.nil?
      @next_node = Node.new(data)
    else
      @next_node.append(data)
    end
  end
end
