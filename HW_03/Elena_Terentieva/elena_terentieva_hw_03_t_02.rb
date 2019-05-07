def task_2(str = '')
  return '' if str.empty?

  res = []
  str.each_line do |line|
    new_str = build_string(line)
    unless new_str.empty?
      res << new_str
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

def build_string(str = '')
  unless str.empty?
    ip = ip_match(str)
    date = date_match(str)
    address = address_match(str)
    return "#{date} FROM: #{ip} TO: #{address[/\/\S+/]}" if ip && date && address
  end
  ''
end
