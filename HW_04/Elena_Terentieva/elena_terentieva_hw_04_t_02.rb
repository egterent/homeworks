require 'yaml'

# the array of configurations

def task_4_2(input)
  return [] if !input.is_a?(String) || input.empty?

  hash = YAML.safe_load(input)
  array_format(hash)
rescue StandardError
  []
end

# adds the configuration hash to the array

def array_format(hash = {})
  return [] if !hash.is_a?(Hash) || hash.empty?

  array = []
  hash.map do |k, v|
    hash_entry = {}
    hash_entry[k.to_sym] = configuration_format(v)
    array << hash_entry
  end
  array
rescue StandardError
  []
end

# extracts configuration data from the given hash

def configuration_format(in_config = {})
  return {} if in_config.empty?

  out_config = {}
  out_config[:db] = in_config['database']
  out_config[:user] = in_config['username'] if in_config.key?('username')
  out_config[:password] = in_config['password'] if in_config.key?('password')
  out_config[:magic_number] = calc_magic_number(in_config['pool'], 
    in_config['timeout'])
  out_config
rescue StandardError
  {}
end

def calc_magic_number(pool, timeout)
  pool ||= 1
  timeout ||= 1000
  pool * timeout
end
