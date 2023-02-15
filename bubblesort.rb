def bubblesort(array)
  for i in 0...array.length
    for j in 0...(array.length - i - 1)
      next unless array[j] > array[j + 1]

      array[j], array[j + 1] = array[j + 1], array[j]
    end
  end

  array
end

p bubblesort([4, 3, 78, 2, 0, 2])
