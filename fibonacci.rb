def fib(number)
  sequence = []
  0.upto(number) { |i| sequence.push(i < 2 ? i : sequence[-1] + sequence[-2]) }
  sequence
end

def fib_rec(number)
  number < 2 ? number : fib_rec(number - 1) + fib_rec(number - 2)
end

puts "Non-recursive: "
print fib(10) 
puts "\nRecursive: "
(0..10).each { |number| print fib_rec(number).to_s + ", " }




