def task_1(str = "")
  begin
    if !str.empty?
      str.each_line do |line|
        return line if line.downcase.include?('error')
      end
    end
    return ""
  rescue
    puts "Error: The passed argument is not a string!"
  end
end
