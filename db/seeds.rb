require "open-uri"

# USERS SEED DB

puts 'Cleaning old users'
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')

puts 'Creating 5 fake users...'

# user_1 = URI.open("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80")

user_one = User.new(
  first_name: 'Eduard',
  last_name: 'Romain',
  interests: 'Sports, hiking, basketball',
  city: 'Amsterdam',
  bio: '30 years old professional currently living in Amsterdam.
      I spend a lot of time outside, and I have a lot of interests such as sports, tennis, basketball and golf.',
  occupation: 'Customs Officer',
  email: 'eduard@hotmail.com',
  password: '123123'
)
user_one.save!

# user_2 = URI.open("")

user_two = User.new(
  first_name: 'Alexandros',
  last_name: 'Meisner',
  interests: 'Food',
  city: 'Barcelona',
  occupation: 'Equality, Diversity and Inclusion Education Fellow',
  bio: 'I am starting a new job soon! I will be working as an Equality, Diversity and Inclusion Education Fellow.begin
  I am tidy, organised, quiet but also sociable.
  I love travelling, reading, writing, being out in nature, jogging/hiking, cooking and baking.
  I am well travelled and have lived abroad in a variety of places including Canada, Scotland and recently was in London for 3 months from June to August.
  Happy to provide you with references from my past housemates/landlords if need be!',
  email: 'alexandros@hotmail.com',
  password: '123123'
)

user_3 = URI.open("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")

user_three = User.new(
  first_name: 'Aleksey',
  last_name: 'Heimisson',
  interests: 'Reading, Watching Movies, Football' ,
  city: 'London',
  occupation: 'Student',
  bio: ' I have just graduated from Queen Mary University of London after completing my Masters in Astrophysics.
  I will be working part time temporarily and simultaneously be looking for a full time job in my sector.
  I am looking for new flatmates to move in from the 24th of November.',
  email: 'aleksey@hotmail.com',
  password: '123123'
)

user_three.save!

user_four = URI.open("https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80")

user_four = User.new(
  first_name: 'Mahesh',
  last_name: 'Baník',
  interests: 'Drawing, Art, Dancing' ,
  city: 'Paris',
  occupation: 'Product Designer',
  bio: 'I am a professional working in tech as a product designer.
  As a flatmate, I am a very tidy and clean person.
  And I used to live with 7 flatmates so I am used to and enjoy living with other people, being responsible, respectful and sociable.
  Other than work, I like creative activities such as drawing, dancing and listening to music. But I would love to try anything new with my flatmates :)
  Do not hesitate to message me if you have any question!',
  email: 'mahesh@hotmail.com',
  password: '123123'
)

user_four.save!

user_five = URI.open("https://images.unsplash.com/photo-1546961329-78bef0414d7c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80")

user_five = User.new(
  first_name: 'Marja',
  last_name: 'Janson',
  interests: 'Baking, cooking, reading' ,
  city: 'Paris',
  occupation: 'Student',
  bio: 'Hi everyone I’m a 21 year old student, and I study art and computing. I used to do fine arts but now I make mainly digital art, and I’m currently working on a game with my friends.
    I have been sharing houses with others for more than 5 years. I lived in America during my high school in a host family with other students and two dogs . And now I live in a shared flat with people as well. I’ve built strong connections with them and respecting boundaries is what I’ve learned from years of living in shared accommodations.
    I’m a quiet person, I like to have my own space but I also love to get to know about people, sharing food and maybe even a movie night. And I definitely clean up after whatever I used and take the responsibility of cleaning up communal areas as well. ',
  email: 'marja@hotmail.com',
  password: '123123'
)

user_five.save!

user_six = URI.open("https://images.unsplash.com/photo-1472849676747-48a51c0c30b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

user_six = User.new(
  first_name: 'Antonietta',
  last_name: 'Foster',
  interests: 'Movies, Art, Going out' ,
  city: 'Rome',
  occupation: 'Teacher',
  bio: 'Hi everyone! My name is Antonietta, I am 27 years old and I am a languages teacher.
  I am considerate, friendly and like to socialise with my housemates.
  Looking forward to hearing from you!',
  email: 'antonietta@hotmail.com',
  password: '123123'
)

user_six.save!

user_seven = User.new(
  first_name: 'Lindy',
  last_name: 'Sierra',
  interests: 'going out, reading, meeting people' ,
  city: 'London',
  occupation: 'Account executive',
  bio: 'My name is Lindy and I’m 24 years old.
  I moved to London from Barcelna five years ago to study at the University of Westminster and am now an account executive for a PR tech firm based in Victoria.
  I am a creative person who enjoys socialising and going out, but I also enjoy privacy and quiet times.
  Please feel free to contact me 😊',
  email: 'lindy@hotmail.com',
  password: '123123'
)

user_seven.save!

user_eight = User.new(
  first_name: 'Amy',
  last_name: 'Dermott',
  interests:'movies, animals, dogs, pilates, cooking' ,
  city: 'New York',
  occupation: 'Biology teacher',
  bio: 'Hi everyone,
  I am a teacher,  I have a very cute dog, and it is house-trained.
  He has a walker three times a week.
  I would love to find somebody my age who is also a professional.
  I enjoy walking with the dog, pilates, a few cocktails now and then, and watching movies.
  I used to love cooking - I would love to share a few meals from time to time! I also like plants!
  I am in no rush to leave the place I am in now. I am happy to meet you for a coffee!',
  email: 'amy@hotmail.com',
  password: '123123'
)

user_eight.save!

puts "All done for Users !"



puts 'Cleaning Flats DataBase...'
Flat.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('flats')


puts 'Creating 6 fake flats...'

file_one = URI.open("https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2880&q=80")

paris_one = Flat.new(
  title: 'Close to Eiffel Tower',
  description: 'Nice apartment with a small balcony and 2 rooms. Charming area with a lot of boulangeries, primeurs and all options. Some great restaurants.',
  picture: "",
  rent: 1200,
  user_id: 3,
  address: '12 Rue Robert Fleury, 75015',
  city: 'Paris',
  # latitude: 48.84396889497072,
  # longitude: 2.3013463979070434,
  number_of_rooms: 2,
  interests: 'Sports, Musuems and Cooking',
  currency: '€ - EUR',
  available_from: Date.new(2023,1,10)
)

paris_one.photos.attach(io: file_one, filename: "paris1.jpg", content_type: "image/jpg")
paris_one.save!
puts "Bingo! #{Flat.last.title} has been created"

# SECOND FLAT

file_two = URI.open("https://images.unsplash.com/photo-1493809842364-78817add7ffb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")
# file_three = URI.open("https://images.unsplash.com/photo-1584622650111-993a426fbf0a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80"),

paris_two = Flat.new(
  title: '11th wonderland',
  description: 'Welcome to the centre of the 11th arrondissement, known for its cafés, bistros and small natural wine cellars. This flat is a former family flat with 2 large bedrooms and a bathroom. This flat is perfect for a long stay in Paris.',
  picture: "",
  rent: 2000,
  user_id: 1,
  city: 'Paris',
  address: '2 Rue du Général Blaise, 75011',
  # latitude: 48.84396889497072,
  # longitude: 2.3013463979070434,
  number_of_rooms: 3,
  interests: 'Coffee, Party and Plants',
  currency: '€ - EUR',
  available_from: Date.new(2022,12,1)
)

paris_two.photos.attach(io: file_two, filename: "paris1.jpg", content_type: "image/jpg")
paris_two.save!
# paris_two.photos.attach(io: file_three, filename: "paris2.jpg", content_type: "image/jpg")
# paris_two.save!

puts "Bingo! #{Flat.last.title} has been created"

# ################### THIRD FLAT

file_one_for_third_flat = URI.open("https://images.pexels.com/photos/813692/pexels-photo-813692.jpeg?cs=srgb&dl=pexels-vecislavas-popa-813692.jpg&fm=jpg&_gl=1*1p15xi6*_ga*MTM1NDEyMjY0OS4xNjY3NTcyMTk2*_ga_8JE65Q40S6*MTY2ODI1NzU0Ni42LjEuMTY2ODI1NzYzNi4wLjAuMA.."),

london_one = Flat.new(
  title: "London's fun",
  description: 'Looking for a place to stay for a month? Discover this very well laid out London apartment with its 3 bedrooms and adjoining bathrooms. The kitchen is large and very well equipped. There is also a bicycle garage just downstairs at the entrance.',
  picture: '',
  rent: 2000,
  user_id: 2,
  address: 'Telegraph Place 94',
  city: 'London',
  # latitude: "",
  # longitude: "",
  number_of_rooms: 3,
  interests: 'Coffee, Party and Plants',
  currency: '£ - GBP',
  available_from: Date.new(2023,2,1)
)

#london_one.photos.attach(io: file_one_for_third_flat, filename: "london1.jpg", content_type: "image/jpg")
london_one.save!
puts "Bingo! #{Flat.last.title} has been created"

# #################### FOURTH FLAT

london_two = Flat.new(
  title: "Very Large london appartment",
  description: 'Looking for a place to stay for a month? Discover this very well laid out London apartment with its 3 bedrooms and adjoining bathrooms. The kitchen is large and very well equipped. There is also a bicycle garage just downstairs at the entrance.',
  picture: '',
  rent: 2000,
  user_id: 4,
  address: '981 Chester Road',
  city: 'London',
  # latitude: "",
  # longitude: "",
  number_of_rooms: 5,
  interests: 'Coffee, Party and Plants',
  currency: '£ - GBP',
  available_from: Date.new(2022,12,12)
)
london_two.save!

# ################### FIFTH FLAT

file_for_nyc_flat_one = URI.open("https://images.unsplash.com/photo-1658195980157-6bf0abd82f38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

nyc_one = Flat.new(
  title: 'Williamsburg appartment',
  description: 'Cool place in the lively area of North Williamsburg. Close to Lorimer St Metro Station. Very large accommodation with 5 rooms and fun people.',
  picture: '',
  rent: 800,
  user_id: 5,
  address: "89 Charles Street Bronx, 10461",
  city: 'Brooklyn',
  # latitude: 40.71642076694229,
  # longitude: -73.95371132796492,
  number_of_rooms: 5,
  interests: 'Coffee, party, code & webdevelopment',
  currency: '$ - USD',
  available_from: Date.new(2022,11,15)
)

nyc_one.photos.attach(io: file_for_nyc_flat_one, filename: "nyc1.jpg", content_type: "image/jpg")
nyc_one.save!
puts "Bingo! #{Flat.last.title} has been created"

# ################### SIXTH FLAT

file_for_bayonne_flat_one = URI.open("https://www.essentialliving.co.uk/wp-content/uploads/2015/09/Studio_bed-WR-685x440.jpg"),

bayonne_one = Flat.new(
  title: 'Lively Bayonne',
  description: 'This apparmtment is very well located in the heart of the newly trendy Saint Esprit part of the city',
  picture: '',
  address: 'Rue de la Salie 10, 64100',
  rent: 800,
  user_id: 6,
  city: 'Bayonne',
  number_of_rooms: 3,
  interests: 'Surf, outdoor activities, montaineering',
  currency: '€ - EUR',
  available_from: Date.new(2022,11,20)
)

#bayonne_one.photos.attach(io: file_for_nyc_flat_one, filename: "bayonne_1.jpg", content_type: "image/jpg")
bayonne_one.save!
puts "Bingo! #{Flat.last.title} has been created"

puts "All done!"
