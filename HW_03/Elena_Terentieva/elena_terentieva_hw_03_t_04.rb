def task_4(str = "")
  begin
    return 0 if str.empty?
    sum = 0
    str.each_char do |c|
      sum += c.to_i
    end
    return sum
  rescue
    puts "Error: The passed argument is not a string!"
  end
end