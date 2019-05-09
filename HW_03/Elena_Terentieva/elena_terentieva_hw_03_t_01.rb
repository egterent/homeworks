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
puts task_1('10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
  10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
  2018-04-23 20:30:42: SSL, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL:Error System error: Undefined error: 0 - 0>
  10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290
      LOG')