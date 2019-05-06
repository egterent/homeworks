def task_2(str = '')
  begin
    return '' if str.empty?

    ip_pat = %r{/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/}
    date_pat = %r{/\d{2}\/\w{3}\/\d{4}:\d{2}:\d{2}:\d{2}\s\+\d{4}/}
    address_prepat = %r{/"POST .+"/}
    address_pat = %r{/\/\S+/}
    res = []
    str.each_line do |line|
      ip = line.match(ip_pat)
      date = line.match(date_pat)
      addr = line.match(address_prepat)
      if !ip.nil? && !date.nil? && !addr.nil?
        address = addr[0].match(address_pat)
        res << "#{date[0]} FROM: #{ip[0]} TO: #{address[0]}"
      end
    end
    return res
  rescue StandardError => e
    puts e.message
  end
end
