puts 'Cleaning DataBase...'
Flat.destroy_all

puts 'Creating 5 fake flats...'

paris_one = Flat.new(
  title: 'Peaceful apartment close to Eiffel Tower',
  description: 'Nice apartment with a small balcony and 2 rooms. Charming area with a lot of boulangeries, primeurs and all options. Some great restaurants.',
  picture: '',
  rent: 1200,
  user_id: 2,
  city: 'Paris',
  latitude: 48.84396889497072,
  longitude: 2.3013463979070434,
  number_of_rooms: 2,
  interests: 'Sports, Musuems and Cooking',
  currency: '€ - EUR',
)

paris_one.save!
puts "Bingo! #{Flat.last.title} has been created"

paris_two = Flat.new(
  title: 'Family apartment close Gardette Square in trendy 11th district of Paris',
  description: 'Welcome to the centre of the 11th arrondissement, known for its cafés, bistros and small natural wine cellars. This flat is a former family flat with 2 large bedrooms and a bathroom. This flat is perfect for a long stay in Paris.',
  picture: '',
  rent: 2000,
  user_id: 1,
  city: 'Paris',
  latitude: 48.84396889497072,
  longitude: 2.3013463979070434,
  number_of_rooms: 3,
  interests: 'Coffee, Party and Plants',
  currency: '€ - EUR',
)

paris_two.save!
puts "Bingo! #{Flat.last.title} has been created"

london_one = Flat.new(
  title: 'Large apartment with 3 bedrooms and bathrooms',
  description: 'Looking for a place to stay for a month? Discover this very well laid out London apartment with its 3 bedrooms and adjoining bathrooms. The kitchen is large and very well equipped. There is also a bicycle garage just downstairs at the entrance.',
  picture: '',
  rent: 2000,
  user_id: 1,
  city: 'Paris',
  latitude: 48.84396889497072,
  longitude: 2.3013463979070434,
  number_of_rooms: 3,
  interests: 'Coffee, Party and Plants',
  currency: '£ - GBP',
)

london_one.save!
puts "Bingo! #{Flat.last.title} has been created"

# london_two = Flat.new()
# london_two.save!

nyc_one = Flat.new(
  title: 'Williamsburg large appartment',
  description: 'Cool place in the lively area of North Williamsburg. Close to Lorimer St Metro Station. Very large accommodation with 5 rooms and fun people.',
  picture: '',
  rent: 800,
  user_id: 4,
  city: 'Brooklyn',
  latitude: 40.71642076694229,
  longitude: -73.95371132796492,
  number_of_rooms: 5,
  interests: 'Coffee, party, code & webdevelopment',
  currency: '$ - USD',
)

nyc_one.save!
puts "Bingo! #{Flat.last.title} has been created"

bayonne_one = Flat.new(
  title: 'Dupleix appartment in lively neightboorhood of Saint Esprit',
  description: 'This apparmtment is very well located in the heart of the newly trendy Saint Esprit part of the city',
  picture: '',
  rent: 800,
  user_id: 4,
  city: 'Bayonne',
  latitude: 43.49397355978582,
  longitude: -1.4658314305470088,
  number_of_rooms: 3,
  interests: 'Surf, outdoor activities, montaineering',
  currency: '€ - EUR',
)

bayonne_one.save!
puts "Bingo! #{Flat.last.title} has been created"
