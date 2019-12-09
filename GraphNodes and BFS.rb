class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
      self.val = val
      self.neighbors = []
    end

    def bfs(starting_node, target_value)
        arr = [starting_node]
        prev_nodes = []

        until arr.empty?
            first = arr.shift
            return first if first.val == target_value
            prev_nodes << first
            first.neighbors.each do |neighbor|
                arr << neighbor unless prev_nodes.include?(neighbor)
            end
        end

        nil
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

if __FILE__ == $PROGRAM_NAME
    
    p a.bfs(a, "b")
    p a.bfs(a, "f")
end