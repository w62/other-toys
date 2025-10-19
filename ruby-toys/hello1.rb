def say_hello_goodbye(name)
  result = "I don't know why you say goodbye, #{name}, I say hello"
  return result
end

today = Time.now

if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end

# cakk the method
puts say_hello_goodbye "John"
puts say_hello_goodbye("Paul")

a = [1, 'cat', 3.14]
puts "The first element is #{a[0]}"
puts "The second element is #{a[1]}"
puts "The third element is #{a[2]}"
a[2] = nil
puts "The array is now #{a.inspect}"


