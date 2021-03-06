def bubble_sort(array)
  n = array.length
  loop do
    # [1, 3, 2, 1, 8, 4, 3, 3]
    swapped_test = false
    (n - 1).times do |j|
      next unless array[j] > array[j + 1]

      # swap
      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp

      swapped_test = true
    end
    break unless swapped_test
  end
  array
end
a = [1, 3, 2, 1, 8, 4, 3, 3]

# bubble_sort_by

def bubble_sort_by(array)
  n = array.length
  loop do
    swapped_test = false
    (n - 1).times do |j|
      next unless yield(array[j], array[j + 1]).to_i >= 1

      # swap
      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp

      swapped_test = true
    end
    break unless swapped_test
  end
  array
end
sort_by = bubble_sort_by(%w[hi sweetie hello hey]) do |left, right|
  left.length - right.length
end
p bubble_sort(a)
p sort_by
