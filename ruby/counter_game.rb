def counter_game(n, is_louise = true)
  player = is_louise
  if n == 1
    return player ? "Richard" : "Louise"
  end

  if Math.log2(n) % 1 == 0
    n /= 2
  else
    x = Math.log2(n).floor
    n = n - (2 ** x)
  end

  counter_game(n, !player)
end


def is_power_of_two?(n)
  n & (n - 1) == 0
end
# This expression works because when you subtract 1 from a power of two, all the bits up to the single 1-bit in the power of two become 1. So, when you perform a bitwise AND between the original number and the number minus one, the result should be 0.

# For example, let's say n = 8 (which is a power of two):
n = 1000 (binary)
n - 1 = 0111 (binary)

n & (n - 1) = 1000 & 0111 = 0000 (binary)
