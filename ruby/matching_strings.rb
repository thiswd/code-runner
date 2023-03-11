def matchingStrings(strings, queries)
  queries.map do |query|
    counter = 0
    strings.each do |string|
      if query === string
        counter += 1
      end
    end
    counter
  end
end
