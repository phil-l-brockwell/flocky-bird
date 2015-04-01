print 'Welcome '; sleep(1)
print 'to';       sleep(1)
print '.';        sleep(1)
print '.';        sleep(1)
print '.';        sleep(1)
puts "\n\n"
puts '......  .         .....    ......  .    .  .     .'
puts '.       .        .     .  .        .  .     .   . '
puts '.       .        .     .  .        . .       . .  '
puts '......  .        .     .  .        ..         .   '
puts '.       .        .     .  .        . .        .   '
puts '.       .        .     .  .        .  .       .   '
puts '.       .......   .....    ......  .    .     .   '
puts
puts '          ......   .  ......   .....  '
puts '          .     .  .  .     .  .    . '
puts '          .     .  .  .     .  .     .'
puts '          ......   .  .    .   .     .'
puts '          .     .  .  .   .    .     .'
puts '          .     .  .  .    .   .    . '
puts '          ......   .  .     .  .....  '
puts
sleep(1)

puts "How many birds would you like in your flock?\n"
birds = gets.chomp.to_i; sleep(1)

puts "\nSelect your Bird and press Enter\n"; sleep(1)
puts 'Enter a for \'-__-\'';                 sleep(1)
puts 'Enter b for \'~..~\'';                 sleep(1)
puts 'Enter c for \'>..<\''
birdSelector = gets.chomp.downcase

if birdSelector == 'a'
  bird = '-__-'
elsif birdSelector == 'b'
  bird = '~..~'
elsif birdSelector == 'c'
  bird = '>..<'
else
  bird = 'BIRD'
end

puts "\nYou have selected " + bird + "\n"

rows = (birds / 2) + 1

birds.odd? ? columns = birds : columns = birds + 1

cells = rows * columns
i = cells

birdsArray = []

1.upto(cells).each { birdsArray.push('    ') }

start = (columns / 2)
i = start
j = 3

birdsArray[i] = bird

while i < cells - 1
  i = start * j
  birdsArray[i] = bird
  i = (start * j) + (j - 1)
  birdsArray[i] = bird
  j = j + 2
end

birdsArray[cells - 1] = '    ' if birds.even?

birdsArray.each_with_index do |element,index|
  print element; sleep(0.5)
  puts if (index + 1) % columns == 0
end

sleep(1); puts "\nNOW GET THE FLOCK OUT OF HERE.\n"