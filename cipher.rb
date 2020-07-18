def encryptor(range, encrypted)
  return encrypted.chr unless encrypted > range.max

  encrypted = (encrypted - range.max) + (range.min - 1)
  encrypted.chr
end

def cipher(str, key)
  str_arr = str.split('')
  str_digits = []
  str_arr.map do |current_char|
    if (65..90).include? current_char.ord
      encrypted = current_char.ord + key % 26
      str_digits.push(encryptor((65..90), encrypted))
    elsif (97..122).include? current_char.ord
      encrypted = current_char.ord + key % 26
      str_digits.push(encryptor((97..122), encrypted))
    else
      str_digits.push(current_char)
    end
  end
  str_digits.join('')
end

