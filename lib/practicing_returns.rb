require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    yield(array[i])
    i += 1
    collection << yield(array[i])
  end
  collection
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
