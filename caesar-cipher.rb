

def caesar_cipher(phrase, shift_factor)
  lowercase_alphabet = ('a'..'z').to_a
  uppercase_alphabet = ('A'..'Z').to_a
  alphabet_length = lowercase_alphabet.length

  enc_phrase = phrase.chars.map do |char|
    if lowercase_alphabet.include?(char)
      i = lowercase_alphabet.index(char)
      replacement_char = (i + shift_factor) % alphabet_length
      lowercase_alphabet[replacement_char]
    elsif uppercase_alphabet.include?(char)
      i = uppercase_alphabet.index(char)
      replacement_char = (i + shift_factor) % alphabet_length
      uppercase_alphabet[replacement_char]
    else
      char
    end
  end

  enc_phrase.join
end

puts caesar_cipher("What a string!", 5) # "Bmfy f xywnsl!"