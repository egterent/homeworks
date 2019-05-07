def task_2(str = '')
  return '' if str.empty?

  res = []
  str.each_line do |line|
    ip = ip_match(line)
    date = date_match(line)
    address = address_match(line)
    if ip && date && address
      res << "#{date} FROM: #{ip} TO: #{address[/\/\S+/]}"
    end
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
