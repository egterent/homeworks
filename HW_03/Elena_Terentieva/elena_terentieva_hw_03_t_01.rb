def task_1(str = '')
  unless str.empty?
    str.each_line do |line|
      return line if line.downcase.include?('error')
    end
  end
  ''
rescue Exception => e
  puts e.message
end
