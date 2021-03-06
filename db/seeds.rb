races =
  %w[human dwarf elf half-elf hobbit orc half-orc tiefling dragonborn assimar].sort
genders =
  %w[male female intesex asexual other]
professions =
  %w[fighter soldier medic priest shaman monk knight sorcerer mage alchemist herbalist doctor sage scholar thief assassin tracker woodsman charlatan entertainer, musician].sort
users =
  %w[dillon john aiden aaron darius rob]

races.each do |x|
  one = Race.new(value: x)
  one.save!
end
genders.each do |x|
  one = Gender.new(gender_value: x)
  one.save!
end

professions.each do |x|
  one = Profession.new(job: x)
  one.save!
end

zero = User.new(
  username: "zero",
  password: 'password',
  email: 'dostaglou@gmail.com'
)
zero.save!

eighteen = User.new(
  username: "eighteen",
  password: 'password',
  email: 'dostaglou@gmail.com'
)
eighteen.save!
18.times do
  char = Character.new(
    name: Faker::Movies::LordOfTheRings.character,
    description: 'Tall dark and mysterious. From a world unknown to us all and with an appetite for violence that would shock even the vilest of murderers',
    allies: Faker::Movies::LordOfTheRings.character,
    enemies: Faker::Movies::LordOfTheRings.character,
    user_id: eighteen.id,
    race_id: 1,
    gender_id: 1,
    profession_id: 1
  )
  char.save!
end

users.each do |x|
  one = User.new(
    username: x,
    password: 'password',
    email: 'dostaglou@gmail.com'
  )
  one.save!
  6.times do
    char = Character.new(
      name: Faker::Movies::LordOfTheRings.character,
      description: 'Tall dark and mysterious. From a world unknown to us all and with an appetite for violence that would shock even the vilest of murderers',
      allies: Faker::Movies::LordOfTheRings.character,
      enemies: Faker::Movies::LordOfTheRings.character,
      user_id: one.id,
      race_id: 1,
      gender_id: 1,
      profession_id: 1
    )
    char.save!
  end
end
