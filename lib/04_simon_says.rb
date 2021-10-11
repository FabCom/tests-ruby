# frozen_string_literal: true

def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, n = 2)
  "#{s} " * (n - 1) + s
end

def start_of_word(s, n = 1)
  s[0, n]
end

def first_word(s)
  s.split[0]
end

def titleize(s)
  s.split(' ').map.with_index do |string, i|
    i.positive? && %w[and the].include?(string) ? string : string.capitalize
  end.join(' ')
end
