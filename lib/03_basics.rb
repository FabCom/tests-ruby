# frozen_string_literal: true

def who_is_bigger(a, b, c)
  h = { a: a, b: b, c: c }
  if h.values.include?(nil)
    'nil detected'
  else
    "#{h.key(h.values.max)} is bigger"
  end
end

def reverse_upcase_noLTA(s)
  s.reverse.upcase.delete('LTA')
end

def array_42(a)
  a.include? 42
end

def magic_array(a)
  a.flatten.uniq.map { |n| n * 2 }.select { |i| i if i % 3 != 0 }.sort
end
p magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]])
