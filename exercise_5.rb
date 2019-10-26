# Develop your work so far to handle sentences
# e.g. "The quick fox jumped over the lazy dog" ->
#      "Ethay ickquay oxfay umpedjay overway ethay azylay ogday"

def pig_latin_sentence(sentence)
  y = sentence
  x = sentence.split
  vowels = ["a", "e", "i", "o", "u"]
  t = "t"
  h = "h"
  qu = "qu"

  x.map do |word|
    first_letter = word[0]
    if vowels.include?(first_letter)
      word << "way"
    elsif word.include?(t && h)
      word << t
      word << h
      word.slice!(0..1)
      word << "ay"
    elsif word.include?(qu)
      word << qu
      word.slice!(0..1)
      word << "ay"
    else
      word << first_letter
      word.slice!(0)
      word << "ay"
    end
    x[0].capitalize!
  end

  x.join(" ")
end

## Tests:

require_relative "./helpers/assert_equal"
assert_equal(
  pig_latin_sentence("The quick fox jumped over the lazy dog"),
  "Ethay ickquay oxfay umpedjay overway ethay azylay ogday"
)
