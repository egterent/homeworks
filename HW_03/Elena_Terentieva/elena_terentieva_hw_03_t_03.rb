require 'date'

def task_3(str = '')
  return '0' if str.empty?

  actions = []
  str.each_line do |line|
    if line =~ /Calling core with action:/
      actions << line[/\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\.\d/]
    end
  end
  calc_delta(actions).to_s
rescue StandardError => e
  puts e.message
end

def calc_delta(arr = [])
  if !arr.nil? && arr.length > 1
    return (time_to_float(arr[1]) - time_to_float(arr[0])) / 1000
  end

  0
end

def time_to_float(str = '')
  return 0 if str.empty?

  DateTime.strptime(str, '%Y-%m-%d %H:%M:%S.%L').strftime('%Q').to_f
rescue StandardError => e
  puts e.message
end
