# Exercise 1 - Stack
# Let's write a Stack class. To do this, use the following framework:

class Stack

    attr_reader :name
    def initialize
      # create ivar to store stack here!
      @name = []
    end

    def push(el)
      # adds an element to the stack
      self.name.push(el)
    end

    def pop
      # removes one element from the stack
      self.name.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      self.name.first
    end
  end

#   stack = Stack.new
#   stack.push(7)
#   stack.push(6)
#   stack.push(5)
#   stack.push(7)
#   stack.push(2)
#   stack.push("h")
#   stack.push("s")
#   p stack
#   p stack.pop
#   p stack.peek
#   p stack
#   p stack.pop
#   p stack.peek
#   p stack
#   p stack.pop
#   p stack.peek
#   p stack
  


class Queue
    attr_reader :queue
    def initialize
        @queue = []
    end

    def enqueue(el)
      # adds an element to the end of the queue
      self.queue.push(el)
    end

    def dequeue
      # removes the first element in the queue
        self.queue.shift
    end

    def peek
      # returns, but doesn't remove, the first element in the queue
      self.queue.first
    end
  end

# queue = Queue.new
#   queue.enqueue(7)
#   queue.enqueue(6)
#   queue.enqueue(5)
#   queue.enqueue(7)
#   queue.enqueue(2)
#   queue.enqueue("h")
#   queue.enqueue("s")
#   p queue
#   p queue.dequeue
#   p queue.peek
#   p queue
#   p queue.dequeue
#   p queue.peek
#   p queue
#   p queue.dequeue
#   p queue.peek
#   p queue

class Map

    attr_reader :instance
    def initialize
        @instance = Array.new {[]}
    end

    def keys
        key_arr = []

        instance.each do |pairs|
            key_arr << pairs.first
        end

        key_arr
    end

    def set(key, value)
        instance << [key, value] unless self.keys.include?(key)
        instance.each do |pairs|
            if pairs.first == key
                pairs[1] = value
            end
        end
    end

    def get(key)
        index = 0
        self.keys.each_with_index {|el, i| index = i if el == key }
        instance[index]
    end

    def delete(key)
        index = 0
        self.keys.each_with_index {|el, i| index = i if el == key }
        instance.delete_at(index)
    end

    def show
        p @instance
    end

end

map_1 = Map.new
map_1.set("key1", "val1")
map_1.set("key2", "val2")
map_1.set("key3", "val3")
map_1.set("key4", "val4")
p map_1
# p map_1.get("key4")
# p map_1.get("key1")
map_1.delete("key2")
map_1.show
