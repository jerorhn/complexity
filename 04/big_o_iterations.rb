def worst_case(num_of_items)
  array = []
  count = 1
  while count <= num_of_items do
    array.push("#{count}, #{count}")
    count += 1
  end
  puts array
end

worst_case(10)
