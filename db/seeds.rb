User.create([{
  id: 1,
  name: "Geralt of Rivia",
  email: "geralt@rivia.com"
},
{
  id: 2,
  name: "Corwin a Prince of Amber",
  email: "corvin@amber.com",
},
{
  id: 3,
  name: "Gendalf",
  email: "gendalf@valinor.com",
}])

Post.create([{
  id: 1,
  body: "Geralt of Rivia (Polish: Geralt z Rivii) is a fictional character and the protagonist of The Witcher Saga of short stories and novels by Polish author Andrzej Sapkowski. He is a magically enhanced monster-hunter known as a witcher, who possesses supernatural abilities due to his mutations.",
  user_id: 1
},
{
  id: 2,
  body: "Lord Corwin is a prince of Amber and son of Oberon. He was the presumptive successor and became temporary monarch between the reigns of Eric & Random. ",
  user_id: 2,
},
{
  id: 3,
  body: "He is a wizard, one of the Istari order, and the leader of the Fellowship of the Ring.",
  user_id: 3
}])


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.firsti)

