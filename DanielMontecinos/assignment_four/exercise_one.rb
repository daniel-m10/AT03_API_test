def return_array
  []
end

def print_first_element(array)
  array.first
end

def print_last_element(array)
  array.last
end

def print_common_elements(array_one, array_two)
  array_one & array_two
end

p return_array
p print_first_element([1, 2, 3])
p print_last_element([1, 2, 3])
p print_common_elements([1, 'a', [1, 2], 'z'], [3, 4, [1, 2], 'z'])
