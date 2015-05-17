@birds_hash = { a: '-__-', b: '~..~', c: '>..<' }

def print_with_sleep(string)
  sleep(1)
  print string
end

def welcome
  print_with_sleep 'Welcome'
  print_with_sleep ' to'
  3.times { print_with_sleep '.' }
  print_with_sleep "\n\nFlocky Bird\n"
end

def input_birds
  print_with_sleep "\nHow many birds would you like in your flock?\n"
  gets.chomp.to_i
end

def select_bird
  print_with_sleep "\nSelect your Bird and press Enter\n"
  @birds_hash.each { |key, value| print_with_sleep "Enter #{key} for #{value}\n" }
  bird_selection = gets.chomp.downcase.to_sym
  @birds_hash[bird_selection]
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

def output_birds
  @birds_array.each_with_index do |element, index|
    print_with_sleep element
    print_with_sleep "\n" if (index + 1) % @columns == 0
  end
  print_with_sleep "\nNOW GET THE FLOCK OUT OF HERE.\n"
end

def add_birds
  start = (@columns / 2)
  i = start
  j = 3
  @birds_array[i] = @bird

  while i < @cells - 1
    i = start * j
    @birds_array[i] = @bird
    i = (start * j) + (j - 1)
    @birds_array[i] = @bird
    j += 2
  end

  @birds_array[@cells - 1] = '    ' if @number_of_birds.even?
end

welcome
@number_of_birds = input_birds
@bird = select_bird
rows = get_rows(@number_of_birds)
@columns = get_columns(@number_of_birds)
@cells = get_cells(rows, @columns)
@birds_array = generate_array(@cells)
add_birds
output_birds
