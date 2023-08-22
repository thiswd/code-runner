# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem

def rot13(secret_messages)
  letters = ("a".."z").to_a
  letters_length = letters.length
  rot13_map = {}

	letters.each_with_index do |letter, index|
    rot_index = index + 13
    rot_index -= letters_length if rot_index >= letters_length
    rot13_map[letter] = letters[rot_index]
  end

  secret_messages.map do |message|
    i = 0
    while i < message.length
      if message[i] =~ /\S/
        message[i] = rot13_map[message[i]]
      end
      i += 1
    end
    message
  end
end
