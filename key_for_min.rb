# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

#There's gotta be an easier way.  A way
#to do it with one #each or something.
#but since we aren't using the enummethods
#that make this easy, I have no idea how to
#find a min in one #each. without setting 
# a min_value outside the loop to something
#so big I hope no one would have it as a value.
# That seems like a hacky thing, so this is 
#how I'm doing it
def key_for_min_value(name_hash)

  #copy values to an array, find the min
  array_to_search = name_hash.map{|key, val| val}
  count=0
  min = array_to_search[0]
  while count < array_to_search.count do 
    if array_to_search[count]<min
      min = array_to_search[count]
    end
    count += 1
  end
  
  #now back through the hash for the key
  
  name_hash.each do |key, value|
    if value == min
      min_key = key
    end
  end
  min_key
end