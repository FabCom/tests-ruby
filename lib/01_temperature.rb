# frozen_string_literal: true

def ftoc(f)
  (f - 32.0) * 5 / 9.0
end

def ctof(t)
  t * 9 / 5.0 + 32
end
