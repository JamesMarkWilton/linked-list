class LinkedList
  attr_accessor :list

  def initialize(list=nil)
    @list = list
  end

  def [](pos)
    if list
      node = list

      while node.link && pos > 0
        node = node.link
        pos -= 1
      end

      if pos == 0
        node.data
      else
        node.link
      end
    else
      list
    end

  end

  def <<(*list_data)
    if list
      node = list

      while node.link
        node = node.link
      end
      node.link = Node.new(list_data.first)
    else
      @list = Node.new(list_data.first)
    end

    self
  end

  def push(list_data)
    self << list_data
  end

  def pop
    if list
      node = list
      last_data = nil

      while node.link
        last_data = node.data
        node = node.link
      end

      node = list
      while node.link && node.data != last_data
        node = node.link
      end

      node.link = nil
    end
  end

  def shift
    if list
      node = list
      @list = node.link
      node.data
    else
      @list = nil
      link
    end
  end

  def unshift(*new_data)
    if list
      new_node = Node.new(new_data.first, list)
      @list = new_node
    else
      self << new_data.first
    end
  end
end

class Node
  attr_accessor :data, :link

  def initialize(data=nil, link=nil)
    @data = data
    @link = link
  end
end
