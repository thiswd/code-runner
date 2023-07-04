# https://www.hackerrank.com/challenges/palindrome-index/problem

def palindrome_index(string)
  left = 0
  right = string.length - 1
  while left < right
    if string[left] != string[right]
      remove_left = string[0...left] + string[left + 1..-1]
      remove_right = string[0...right] + string[right + 1..-1]
      if remove_left == remove_left.reverse
        return left
      elsif remove_right == remove_right.reverse
        return right
      end
      return -1
    end
    left += 1
    right -= 1
  end
  -1
end
