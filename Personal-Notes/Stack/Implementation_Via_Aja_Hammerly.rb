class Stack
  def initialize
    @data = []
  end

  def push(a)
    @data.push(a)
  end

  def pop
    @data.pop
  end

  def peek
    @data.last
  end

  def empty?
    @data.empty?
  end

  def display
    puts "top"
    puts @data.reverse
    puts "bottom"
  end
end

# "If you don’t want to use the built in methods here is another implementation that keeps track of the index of the last item put on the stack."

class Stack
  def initialize
    @data = []
    @head = -1
  end

  def push(a)
    @data << a
    @head += 1
  end

  def pop
    result = @data[@head]
    @data.delete_at(@head)
    @head -= 1
    result
  end

  def peek
    @data[@head]
  end

  def empty?
    @head == -1
  end
end
