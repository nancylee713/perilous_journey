require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head.append(data)
    end
  end

  def count
    @head.nil? ? 0 : @head.count(0)
  end

  def to_string
    result = "The #{@head.surname} family"
    if @head.next_node.nil?
      return result
    else
      @head.to_string(result)
    end
  end
end
