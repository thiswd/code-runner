def find_anagrams(dictionary)
  anagrams = Hash.new { |hash, key| hash[key] = [] }

  dictionary.each do |word|
    sorted_word = word.chars.sort.join
    anagrams[sorted_word] << word
  end

  anagrams.values.select { |words| words.length > 1 }
end
