  class Stack
    def initialize
      # create ivar to store stack here!
        @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack = @stack << el
    end

    def pop
      # removes one element from the stack
      @stack = @stack[0...-1]
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack.max
    end
  end