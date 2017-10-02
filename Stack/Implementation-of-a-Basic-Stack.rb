class Stack
  def initialize
    @store = []
  end

  def push(element)
    @store << element
    return self
  end

  def pop
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end
