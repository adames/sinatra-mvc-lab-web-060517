class PigLatinizer

# find the first vowel
# take the previous letters, chop them off and put them at the end

  def piglatinize(word)
    position_of_first_vowel = word.index(/[aeiouAEIOU]/)
    new_word = word.chars.rotate(position_of_first_vowel)
    if position_of_first_vowel == 0
      new_word << "w"
    end
    new_word << "ay"
    new_word.join
  end

  def to_pig_latin(phrase)
    phrase_arr = phrase.split
    phrase_arr.map do |word|
      piglatinize(word)
    end.join(" ")
  end



end
