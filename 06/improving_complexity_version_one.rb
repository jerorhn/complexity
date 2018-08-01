# This method takes n arrays as input and combine them in sorted ascending order
def poorly_written_ruby(*arrays)
  combined_array = []
  arrays.each do |array|
    array.each do |value|
      combined_array << value
    end
  end

  sorted_array = [combined_array.delete_at(combined_array.length-1)]

  for val in combined_array
    i = 0
    length = sorted_array.length
    current = sorted_array[i - 1]
    while i < length
      if val < current
        sorted_array.insert(i, val)
        break
      elsif i == length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end

  # Return the sorted array
  sorted_array
end
