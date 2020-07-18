def cipher(str, shift)
  message = str.split("")
  encoded = [] 
  message.map do |character| 
      if is_upper?(character) 
          shifted = character.ord + shift%26
          encoded << cipher_shift((65..90), shifted)
      elsif is_lower?(character)
          shifted = character.ord + shift%26
          encoded << cipher_shift((97..122), shifted)
      else
          encoded << character
      end
  end
  encoded.join("")
end

def is_upper?(char)
  (65..90).include? char.ord
end

def is_lower?(char)
  (97..122).include? char.ord
end

def cipher_shift(range, shifted)
  if shifted > range.max 
      shifted = (shifted - range.max) + (range.min - 1)
      shifted.chr
  else 
      shifted.chr
  end
end

names = 'In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.'
cool = cipher(names, 5)
p cool
