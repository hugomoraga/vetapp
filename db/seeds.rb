# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pethistory.destroy_all
Pet.destroy_all
Client.destroy_all


client = Client.create(name: 'Hugo', phone: '897654321', email: 'hugo@mail.cl')
pet1 = Pet.create(name: 'Totoro', race: 'Quiltro', birthday: '01/01/2018')
pet2 = Pet.create(name: 'Curi', race: 'Quiltro', birthday: '12/12/2015')
history1 = Pethistory.create(weight: 30, height: 30, description: 'Vacunado')
history2 = Pethistory.create(weight: 16, height: 20, description: 'Revision')
history3 = Pethistory.create(weight: 30, height: 20, description: 'Visita')
client.pets << pet1
client.pets << pet2
pet1.pethistories << history1
pet1.pethistories << history2
pet2.pethistories << history3