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
