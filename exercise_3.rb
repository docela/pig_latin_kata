# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
  a = "q"
  b = "u"
  if word.include?(a && b)
    word << a
    word << b
    word = word[2..-1]
  elsif word.include?(a)
    word << a
    word = word[1..-1]
  else
    word << b
    word = word[2..-1]
  end
  "#{word}ay"
end

## Tests:

require_relative "./helpers/assert_equal"
assert_equal(pig_latin("quick"), "ickquay")
assert_equal(pig_latin("quilt"), "iltquay")
assert_equal(pig_latin("qat"), "atqay")
