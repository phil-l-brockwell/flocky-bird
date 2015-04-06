def welcome
  print 'Welcome'
  sleep(1)
  print ' to'
  sleep(1)
  3.times { print '.'; sleep(1) }
  puts "\n\nFlocky Bird"
  sleep(1)
end

def input_birds
  print "\nHow many birds would you like in your flock?\n"
  sleep(1)
  gets.chomp.to_i
end

def select_bird
  birds_hash = { a: '-__-', b: '~..~', c: '>..<' }
  puts "\nSelect your Bird and press Enter\n"
  sleep(1)
  birds_hash.each { |key, value| puts "Enter #{key} for #{value}" }
  bird_selection = gets.chomp.downcase.to_sym
  birds_hash[bird_selection]
end

def get_rows(number_of_birds)
  (number_of_birds / 2) + 1
end

def get_columns(number_of_birds)
  number_of_birds.odd? ? number_of_birds : number_of_birds + 1
end

def get_cells(rows, columns)
  rows * columns
end

def generate_array(cells)
  Array.new(cells) { '    ' }
end

welcome
number_of_birds = input_birds
bird = select_bird
rows = get_rows(number_of_birds)
columns = get_columns(number_of_birds)
cells = get_cells(rows, columns)
birds_array = generate_array(cells)

start = (columns / 2)
i = start
j = 3

birds_array[i] = bird

while i < cells - 1
  i = start * j
  birds_array[i] = bird
  i = (start * j) + (j - 1)
  birds_array[i] = bird
  j += 2
end

birds_array[cells - 1] = '    ' if number_of_birds.even?

birds_array.each_with_index do |element, index|
  print element
  sleep(0.5)
  puts if (index + 1) % columns == 0
end

sleep(1)
puts "\nNOW GET THE FLOCK OUT OF HERE."