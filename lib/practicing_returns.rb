require 'pry'

def hello(array)
  i = 0
  while i < array.length
    collection = []
    collection.push(yield(array[i]))
    i += 1
  end
  binding.pry
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
