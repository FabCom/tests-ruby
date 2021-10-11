# frozen_string_literal: true

def time_string(s)
  Time.at(s).utc.strftime('%H:%M:%S')
end

puts time_string(66)
