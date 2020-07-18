def encryptor(range, de_encrypted)
  return de_encrypted.chr unless de_encrypted > range.max

  de_encrypted = (de_encrypted - range.max) + (range.min - 1)
  de_encrypted.chr
end

def de_cipher(str, key)
  str_arr = str.split('')
  str_digits = []
  str_arr.map do |current_char|
    if (65..90).include? current_char.ord
      de_encrypted = current_char.ord - key % 26
      str_digits.push(encryptor((65..90), de_encrypted))
    elsif (97..122).include? current_char.ord
      de_encrypted = current_char.ord - key % 26
      str_digits.push(encryptor((97..122), de_encrypted))
    else
      str_digits.push(current_char)
    end
  end
  str_digits.join('')
end
