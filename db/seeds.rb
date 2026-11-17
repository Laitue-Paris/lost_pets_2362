puts "Nettoyage de la base de donnée"
Pet.destroy_all
puts "Nettoyage terminé, il reste #{Pet.count} pet"

40.times do
  pet = Pet.create!(
    name: Faker::Name.name,
    species: Pet::SPECIES.sample,
    address: Faker::Address.full_address,
    found_on: (Date.today - rand(1..20))
  )
  puts "l'animal #{pet.name} a été créé"
end

puts "#{Pet.count} animaux créés"
