def valid_parentheses(string)
  characters = string.split("")
  # initial basic balance check
  return false if characters.count("(") != characters.count(")")
  #full check
  count = 0
  characters.each do |character|
    count += 1 if character == "("
    count -= 1 if character == ")"
    return false if count < 0
  end
  return true
end
