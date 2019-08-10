races =
  %w[human dwarf elf half-elf hobbit orc half-orc tiefling dragonborn assimar]

races.each do |x|
  one = Race.new(race: x)
  one.save!
end

users = %w[dillon john aiden aaron darius rob]

users.each do |x|
  one = User.new(
    username: x,
    password: 'password',
    email: 'dostaglou@gmail.com'
  )
  one.save!
end
