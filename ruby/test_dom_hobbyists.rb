def find_all_hobbyists(hobby, hobbies)
  people = hobbies.select { |key, value| value.include?(hobby) }.keys
end

def find_all_hobbyists(hobby, hobbies)
  people = hobbies.map do |key, value|
    key if value.any? { |h| h == hobby }
  end

  return people.compact
end

hobbies = {
    "Steve" => ['Fashion', 'Piano', 'Reading'],
    "Patty" => ['Drama', 'Magic', 'Pets'],
    "Chad" => ['Puzzles', 'Pets', 'Yoga']
}

puts find_all_hobbyists('Yoga', hobbies)
