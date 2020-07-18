def cipher(str, key)
  return 'Enter a valid string' unless str.is_a?(String)

  new_arr = []
  new_str_arr = []
  str.each_char do |current_char|
    if current_char == ' '
      new_arr.push(' ')
    end
    new_arr.push(current_char.ord + key)
  end
  new_arr.each { |current_elt| new_str_arr.push(current_elt.chr) }
  new_str_arr
end

names = 'Emmanuel descholar is cool'
cool = cipher(names, 5)
p cool
