# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats

def pig_latin(word)
# This sets the initial word first as a separate variable and also it's first index as a variable
  x = word
  first_letter = word[0]

# This flips the consonants to the end of the word
  until ["a", "e", "i", "o", "u"].include?(first_letter)
    word << first_letter
    word = word[1..-1]
    first_letter = word[0]
  end
# This if statement selects the initial/ any word who has a capital (x[0].capitalize)
  if x[0] == x[0].capitalize
    word.downcase!
    word.capitalize!
  end
# Then prints the word
  "#{word}ay"
end

## Tests:

require_relative "./helpers/assert_equal"
assert_equal(pig_latin("Dog"), "Ogday")
assert_equal(pig_latin("cram"), "amcray")
