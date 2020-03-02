class GraphNode
    
    attr_accessor :value, :neighbors
    


    def initialize(node)
        @value = node
        @neighbors = []
    end

    def add_neighbor(node)
        @neighbors << node
    end
    
    def bfs(starting_node, target_value)
        
        queue = [starting_node]
        while !queue.empty?
            node = queue.shift
            return starting_node.value if starting_node.value == target_value
            queue += node.neighbors
        end
        nil
    end
    
end

    # a = GraphNode.new('a')
    # b = GraphNode.new('b')
    # c = GraphNode.new('c')
    # d = GraphNode.new('d')
    # e = GraphNode.new('e')
    # f = GraphNode.new('f')
    # a.neighbors = [b, c, e]
    # c.neighbors = [b, d]
    # e.neighbors = [a]
    # f.neighbors = [e]

    #  bfs(a, "b")