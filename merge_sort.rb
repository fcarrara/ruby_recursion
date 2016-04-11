def merge_sort(list)
  n = list.size / 2
 
  if n > 0
    left = merge_sort(list[0..n-1])
    right = merge_sort(list[n..-1])
    merge(left,right)
  else
    list
  end
end

def merge(left,right)
  result = []
  
  while !left.empty? && !right.empty?      
    if left[0] <= right[0]
      result << left.shift
    else
      result << right.shift
    end
  end

  # Either left or right may have elements left so we consume them.
  result.concat left unless left.empty?
  result.concat right unless right.empty?

  result
   
end

list = [9,8,7,6,5,4,3,2,1,0]
puts merge_sort(list)
