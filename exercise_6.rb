# Write the program to reverse the above
# e.g. "Ethay uickqay oxfay umpedjay overway ethay azylay ogday" ->
#      "The quick fox jumped over the lazy dog"

def pig_latin_sentence_reverse(sentence)
  sentence.downcase!

  x = sentence.split

  t = "t"
  h = "h"
  q = "q"
  u = "u"

  # this removes the "ay"
  x.map do |word|
    word.slice!("way")
    word.slice!("ay")
  end

  # this removes the "th" and "qu" from the end of the words and add it to the front
  x.map do |word|
    last_letter = word[-1]
    if word.include?(t && h)
      word.insert(0, h)
      word.insert(0, t)
      word.chop!
      if last_letter == t || h
        word.chop!
      end
    end
    # else
    if word.include?(u && q)
      word.insert(0, u)
      word.insert(0, q)
      word.chop!
      if last_letter == u || q
        word.chop!
      end
    end
  end

  # this changes the selected elements
  [x[2], x[3], x[6], x[7]].map do |word|
    word.insert(0, word[-1])
    if word[0] == word[-1]
      word.chop!
      word == word[0..-2]
    end
    x[0].capitalize!
  end

  x.join(" ")
end

pig_latin_sentence_reverse("Ethay ickquay oxfay umpedjay overway ethay azylay ogday")
## Tests:

require_relative "./helpers/assert_equal"
assert_equal(
  pig_latin_sentence_reverse("Ethay ickquay oxfay umpedjay overway ethay azylay ogday"),
  "The quick fox jumped over the lazy dog"
)
