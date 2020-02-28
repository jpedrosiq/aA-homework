class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue = @queue + [el]
    end

    def dequeue
        @queue = @queue[1..-1]
    end

    def peek
        @queue.max
    end


end