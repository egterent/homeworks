# returns array of uniq elements sorted in descending order

def task_4_3(array = [])
  return [] if !array || !array.is_a?(Array) || array.empty?

  array.flatten.uniq.sort.reverse
rescue StandardError
  []
end
