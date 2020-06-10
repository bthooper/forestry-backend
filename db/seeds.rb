require 'faker'

Location.destroy_all
Resource.destroy_all

categories = ['Standing timber', 'Rough cut lumber', 'Milled lumber']
statuses = ['Ready for harvest', 'Ready for market', 'Ready for mill']

# amount_of_resources determines how many resource records you create
amount_of_locations = 10 

amount_of_locations.times do

  place = Location.create(name: Faker::Games::ElderScrolls.region, description: Faker::Lorem.sentence,
                  longitude: Faker::Address.longitude, latitude: Faker::Address.latitude)
  2.times do
    res = place.resources.new(description: Faker::Lorem.sentence, 
                             icon_url: Faker::Internet.url(host: 'example.com'))
    res.status = statuses.sample
    res.category = categories.sample 
    res.save
  end

end
