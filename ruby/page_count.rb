

def page_count(n, p)
  mid = n / 2
  flips = 0

  if p <= mid
    i = 1
    while (i < p) do
      flips += 1
      i += 2
    end
  else
    i = n % 2 === 0 ? n : n - 1
    while (i > p) do
      flips += 1
      i -= 2
    end
  end
  flips
end
