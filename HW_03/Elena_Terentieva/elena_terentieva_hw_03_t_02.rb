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
  str[%r{/\d{2}\/\w{3}\/\d{4}:\d{2}:\d{2}:\d{2}\s\+\d{4}/}]
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
      return "#{date} FROM: #{ip} TO: #{address[%r{/\/\S+/}]}"
    end
  end
  ''
end
