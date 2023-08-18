def count_good_substrings(s)
  window = []

  s.split("").reduce(0) do |count, letter|
    window.push(letter)
    if window.length == 3
      count += 1 if window.uniq.length == 3
      window.shift
    end
    count
  end
end
