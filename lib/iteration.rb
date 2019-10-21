def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  row_index = 0
<<<<<<< HEAD
  pizza = []
  while row_index < src.count do
    pizza.push("I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza")
    row_index += 1
  end
=======
  while row_index < src.count do
    element_index = 0
    topping_one = []
    while element_index < src[row_index].count do
      src[row_index][element_index] = topping_one
      element_index += 1
    end
    element_index2 = 0
    topping_two = []
    while element_index2 < src.count do
      src[row_index][element_index2] = topping_two  
      element_index2 += 1
    end
    row_index += 1
  end
  pizza = ["I love #{topping_one} and #{topping_two} on my pizza"]
>>>>>>> 08c7f5ea03255b24d44e81cba87036232df6afb4
  p pizza
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  outer_results = []
  row_index = 0
  while row_index < src.count do
    outer_results.push(src[row_index].max)
    row_index += 1
  end
  p outer_results
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  row_index = 0
  while row_index < src.count do
    if (src[row_index][0] % 2 == 0) && (src[row_index][1] % 2 == 0)
      total += (src[row_index][0] + src[row_index][1])
    end
    row_index += 1
  end
  p total
end
