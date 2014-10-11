puts
print 'Welcome '
$stdout.flush
sleep(1)
print 'to'
$stdout.flush
sleep(1)
print '.'
$stdout.flush
sleep(1)
print '.'
$stdout.flush
sleep(1)
print '.'
$stdout.flush
sleep(1)
puts
puts
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
$stdout.flush
sleep(2)

puts 'How many birds would you like in your flock?'
birds = gets.chomp.to_i
puts
$stdout.flush
sleep(1)

puts 'Select your Bird and press Enter'
puts
$stdout.flush
sleep(1)

puts 'Enter a for \'-__-\''
$stdout.flush
sleep(1)

puts 'Enter b for \'~..~\''
$stdout.flush
sleep(1)

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

puts
puts 'You have selected ' + bird
puts

rows = (birds / 2) + 1

if birds.odd?
  columns = birds
else
  columns = birds + 1
end

cells = rows * columns
i = cells

birdsArray = []

while i > 0
    birdsArray.push('    ')
    i = i - 1
end

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

if birds.even?
  birdsArray[cells - 1] = '    '
end

birdsArray.each_with_index do |element,index|
  print element
  $stdout.flush
  sleep(0.5)
  puts if (index + 1) % columns == 0
end

puts
$stdout.flush
sleep(1)
puts 'NOW GET THE FLOCK OUT OF HERE.'
puts