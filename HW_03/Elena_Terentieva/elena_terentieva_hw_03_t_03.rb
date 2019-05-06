require 'date'

def task_3(str = '')
  begin
    return '0' if str.empty?

    date_pat = /\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\.\d/
    actions = []
    str.each_line do |line|
      actions << line[date_pat] if line =~ /Calling core with action:/
    end
    return calc_delta(actions).to_s
  rescue Exception => e
    puts e.message
  end
end

def calc_delta(arr = [])
  if !arr.nil? && arr.length > 1
    return (time_to_float(arr[1]) - time_to_float(arr[0])) / 1000
  end
  0
end

def time_to_float(str = '')
  begin
    return 0 if str.empty?

    return DateTime.strptime(str, '%Y-%m-%d %H:%M:%S.%L').strftime('%Q').to_f
  rescue Exception => e
    puts e.message
  end
end
