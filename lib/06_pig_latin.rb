# frozen_string_literal: true

def examine_each_word(word)
  oldword = word
  word = word.downcase
  if word[0] =~ /[aeiou]/
    word += 'ay'
  elsif word[1] =~ /[aeiou]/ && word[0, 2] != 'qu'
    word = "#{word[1, word.length - 1]}#{word[0]}ay" # beginning with a consonant and don't begin by "qu"
  else
    word = if word[2] =~ /[aeiou]/ && word[1, 2] != 'qu' # beginning with two consonants or qu
             "#{word[2, word.length - 1]}#{word[0, 2]}ay"
           else # beginning with three consonants or begin by a consonnant and "qu"
             "#{word[3, word.length - 1]}#{word[0, 3]}ay"
           end
  end
  if oldword == oldword.capitalize
    word.capitalize
  else
    word
  end
end

def translate(s)
  s.split.map { |i| examine_each_word(i.to_s) }.join(' ')
end
