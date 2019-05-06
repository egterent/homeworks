def task_2(str = '')
  return '' if str.empty?

  res = []
  str.each_line do |line|
    if line.match(%r{/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/}) && 
      line.match(%r{/\d{2}\/\w{3}\/\d{4}:\d{2}:\d{2}:\d{2}\s\+\d{4}/}) && 
      line.match(%r{/"POST .+"/})
      
      address = addr[0].match(%r{/\/\S+/})
      res << "#{date[0]} FROM: #{ip[0]} TO: #{address[0]}"
    end
  end
  res
rescue StandardError => e
  puts e.message
end
