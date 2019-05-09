def task_1(str = '')
  unless str.empty?
    str.each_line do |line|
      return line.chomp if line.downcase.include?('error')
    end
  end
  ''
rescue StandardError => e
  puts e.message
end
