# frozen_string_literal: true

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(a)
  a.sum
end

def multiply(a, b)
  a * b
end

def power(a, b)
  a**b
end

def factorial(x)
  (1..x).reduce(:*) || 1
end
