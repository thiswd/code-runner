def pangrams(s)
  s = s.downcase
  letters = ("a".."z").to_a
  index = 0

  while index < s.length do
    char = s[index]
    letters.delete(char)
    break if letters.length === 0
    index += 1
  end
  letters.length === 0 ? "pangram" : "not pangram"
end

s = "We promptly judged antique ivory buckles for the next prize"

puts pangrams(s)
