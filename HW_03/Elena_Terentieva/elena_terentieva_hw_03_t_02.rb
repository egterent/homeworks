def task_2(str = '')
  return '' if str.empty?

  res = []
  str.each_line do |line|
    new_str = build_string(line)
    res << new_str unless new_str.empty?
  end
  res
rescue StandardError => e
  puts e.message
end

def ip_match(str = '')
  str[/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/]
end

def date_match(str = '')
  str[/\d{2}\/\w{3}\/\d{4}:\d{2}:\d{2}:\d{2}\s\+\d{4}/]
end

def address_match(str = '')
  str[/"POST .+"/]
end

def build_string(str = '')
  unless str.empty?
    ip = ip_match(str)
    date = date_match(str)
    address = address_match(str)
    if ip && date && address
      return "#{date} FROM: #{ip} TO: #{address[/\/\S+/].upcase}"
    end
  end
  ''
end
puts task_2('10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
  10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
  2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>
  10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290
      LOG')