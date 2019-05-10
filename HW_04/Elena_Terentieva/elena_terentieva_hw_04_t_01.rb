# returns num elements of Fibbonacci sequence

def task_4_1(num = 0)
  return [0] if !num || num < 1
  return [1] if num == 1

  num = 1000 if num > 1000
  arr = [1, 1]
  (3..num).each { arr << arr[-1] + arr[-2] } if num > 2
  arr
rescue StandardError => e
  puts e.message
  [0]
end
