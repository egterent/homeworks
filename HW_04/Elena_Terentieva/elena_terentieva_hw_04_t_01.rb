# returns num elements of Fibbonacci sequence

def task_4_1(num = 0)
  return [0] if num == 0

  arr = [1]
  if num > 1
    num = 1000 if num > 1000
    arr << 1
    (3..num).each { arr << arr[-1] + arr[-2] }
  end
  arr
rescue StandardError
  []
end
