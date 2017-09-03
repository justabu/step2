require 'byebug'

lengths1 = [6, 5, 4, 4, 2, 2, 8]


def cutSticks(lengths)

  resulting_array = []

  lengths.shift

  cut_sticks_recursive(lengths, resulting_array)


end

def cut_sticks_recursive(lengths, results_array)

  counter = 0
  intermediate_array = []

    intermediate_array = lengths.map do |number|
      if number >= lengths.map{|num| num if num!=0 }.compact.min
        counter += 1
        number - lengths.map{|num| num if num!=0 }.compact.min
      else
        0
      end
    end
  results_array << counter


  return results_array if intermediate_array.max == 0

  cut_sticks_recursive(intermediate_array, results_array)


end

p cutSticks(lengths1)