def task_1(str = '')
  begin
    unless str.empty?
      str.each_line do |line|
        return line if line.downcase.include?('error')
      end
    end
    return ''
  rescue Exception => e
    puts e.message
  end
end
