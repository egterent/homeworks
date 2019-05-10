#returns n elements of Fibbonacci sequence

def task_4_1(n = 0)
  return [0] if !n || n < 1
  return [1] if n == 1
  n = 1000 if n > 1000
  arr = [1, 1]
  if n > 2
    (3..n).each { |i| arr << arr[-1] + arr[-2] }
  end
  arr
rescue StandardError => e
  puts e.message
  [0]
end
