# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in (1..20)
  # Créé 20 users - User1, mail1@gmail.com ; User2, mail2@gmail.com etc
  User.create(name: "User#{i}", email: "mail#{i}@gmail.com")
end

for i in (1..50)
  #Créé 20 pins et associe à chaque un user_id aléatoire (de 1 à 20 puisque 20 utilisateurs créés)
  Pin.create(url: "https://#{i}", user_id: rand(20))
end

for i in (1..10)
  #Créé 10 commentaires et associe à chaque un user_id et un pin_id aléatoire
  Comment.create(content: "BlablaOnSenFout#{i}", user_id: rand(20), pin_id: rand(50))
end
