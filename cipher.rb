def cipher(str, key)
  str_arr = str.split('')
  str_digits = []
  str_arr.map do |current_char|
    if (65..90).include? current_char.ord
      shifted = current_char.ord + key % 26
      str_digits.push(cipher_shift((65..90), shifted))
    elsif (97..122).include? current_char.ord
      shifted = current_char.ord + key % 26
      str_digits.push(cipher_shift((97..122), shifted))
    else
      str_digits.push(current_char)
    end
  end
  str_digits.join('')
end

def cipher_shift(range, shifted)
  return shifted.chr unless shifted > range.max

  shifted = (shifted - range.max) + (range.min - 1)
  shifted.chr
end

names = 'In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.'
cool = cipher(names, 5)
p cool
