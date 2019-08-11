races =
  %w[human dwarf elf half-elf hobbit orc half-orc tiefling dragonborn assimar].sort
genders =
  %w[male female intesex asexual other]
hair_types =
  %w[long short curly straight wavy bald shaved].sort
hair_colors =
  %w[brunette black blonde red gray silver rainbow green blue sea-foam sunset crimson golden pink].sort
eye_colors =
  %w[black blue hazel light-blue red green brown silver gray milk purple opalescent].sort
wealth =
  %w[destitute poor working-class middle-class well-off rich extremely-rich]
professions =
  %w[fighter soldier medic priest shaman monk knight sorcerer mage alchemist herbalist doctor sage scholar thief assassin tracker woodsman charlatan entertainer, musician].sort

races.each do |x|
  one = Race.new(race_name: x)
  one.save!
end
genders.each do |x|
  one = Gender.new(gender_value: x)
  one.save!
end
hair_types.each do |x|
  one = HairType.new(hair_type_value: x)
  one.save!
end
hair_colors.each do |x|
  one = HairColor.new(hair_color_value: x)
  one.save!
end
eye_colors.each do |x|
  one = Eye.new(eye_color: x)
  one.save!
end
wealth.each do |x|
  one = Wealth.new(wealth_value: x)
  one.save!
end
professions.each do |x|
  one = Profession.new(job: x)
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
