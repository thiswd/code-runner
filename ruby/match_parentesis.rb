def match_parentesis(string)
  opened = ["(", "{", "["]
  closed = [")", "}", "]"]
  stack = []

  string.each_char do |char|
    l_index = opened.index(char)

    if l_index
      stack << l_index
    else
      r_index = closed.index(char)
      return false if stack.pop != r_index
    end
  end
  true
end

sentence = "[{}](((({}))))[]"
puts match_parentesis(sentence)
