def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end

who_says_what {|person, phase| puts "#{person} says #{phase}"}

while (lines = gets)
  print lines
end
