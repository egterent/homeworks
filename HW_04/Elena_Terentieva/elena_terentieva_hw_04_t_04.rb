# checks if the given string is a palindrome

def task_4_4(string = '')
  return false unless string.is_a?(String)

  string = string.downcase
  string == string.reverse
rescue StandardError
  false
end
