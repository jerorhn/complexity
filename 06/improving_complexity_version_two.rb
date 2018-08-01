def poorly_written_ruby(*arrays)
  combined_array = []
  arrays.each do |array|
    array.each do |value|
      length = combined_array.length
      mid = length / 2
      mid_value = combined_array[mid]
      if length == 1
        combined_array.push(value)
      else
        while value != mid_value
          if value < mid_value
            mid = mid - 1
            mid_value = combined_array[mid]
          elsif value > mid_value
            mid = mid + 1
            mid_value = combined_array[mid]
          end
        end
        combined_array.insert(mid, value)
      end
    end
  end

# Return the sorted array
combined_array
end
