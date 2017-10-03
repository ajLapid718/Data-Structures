class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end

  def pop
    if empty?
      return nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      return nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end
end

# push values on the stack ✔
# pop values on the stack ✔
# pop should return nil if the stack is empty ✔
# push should return nil if the stack is full ✔
# size method should return the length of the stack ✔
# look method should return the value of the topmost stack element ✔
# push should return nil if we try to insert a nil element ✔
