def task_4(str = '')
  return 0 if str.empty?

  sum = 0
  str.each_char do |c|
    sum += c.to_i
  end
  sum
rescue StandardError => e
  puts e.message
end
