# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  first_letter = word[0]
  if ["a", "e", "i", "o", "u"].include?(first_letter)
    "#{word}way"
  else
    until ["a", "e", "i", "o", "u"].include?(first_letter)
      word << first_letter
      word = word[1..-1]
      first_letter = word[0]
    end
    "#{word}ay"
  end
end

## Tests:

require_relative "./helpers/assert_equal"
assert_equal(pig_latin("cram"), "amcray")
assert_equal(pig_latin("sprinkle"), "inklespray")
assert_equal(pig_latin("dog"), "ogday")
assert_equal(pig_latin("up"), "upway")
