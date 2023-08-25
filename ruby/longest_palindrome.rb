# https://leetcode.com/problems/longest-palindromic-substring/

def longest_palindrome(s)
  start_idx = 0
  end_idx = 0

  for i in 0...s.length
    len1 = expand_around_center(s, i, i)           # Odd length palindrome
    len2 = expand_around_center(s, i, i + 1)       # Even length palindrome

    max_len = [len1, len2].max

    if max_len > (end_idx - start_idx)
        start_idx = i - (max_len - 1) / 2
        end_idx = i + max_len / 2
    end
  end

  s[start_idx..end_idx]
end

def expand_around_center(s, left, right)
  while left >= 0 && right < s.length && s[left] == s[right]
    left -= 1
    right += 1
  end
  return right - left - 1
end
