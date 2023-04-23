Post.delete_all
User.delete_all

users = User.create([{
  name: "Geralt of Rivia",
  email: "geralt@rivia.com"
},
{
  name: "Corwin a Prince of Amber",
  email: "corvin@amber.com",
},
{
  name: "Gendalf",
  email: "gendalf@valinor.com",
}])

[
  "Geralt of Rivia (Polish: Geralt z Rivii) is a fictional character and the protagonist of The Witcher Saga of short stories and novels by Polish author Andrzej Sapkowski. He is a magically enhanced monster-hunter known as a witcher, who possesses supernatural abilities due to his mutations.",
  "Lord Corwin is a prince of Amber and son of Oberon. He was the presumptive successor and became temporary monarch between the reigns of Eric & Random. ",
  "He is a wizard, one of the Istari order, and the leader of the Fellowship of the Ring.",
].each do |body|
  Post.create(body: body, user: users.sample)
end
