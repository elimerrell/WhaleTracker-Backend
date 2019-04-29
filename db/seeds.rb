require 'rest-client'
require 'json'

Sighting.destroy_all

def get_api_data
    response_string = RestClient.get("http://hotline.whalemuseum.org/api.json")
    response_hash = JSON.parse(response_string)
  end
  
  def iterate_api_data
    get_api_data.each do |sighting|
    end
  end

  puts 'populating sightings'

    get_api_data.each do |sighting|
        Sighting.create!(
            user_id: 1,
            whale_sighting_id: nil,
            species: sighting["species"],
            quantity: sighting["quantity"],
            description: sighting["description"],
            latitude: sighting["latitude"],
            longitude: sighting["longitude"],
            location: sighting["location"],
            orca_type: sighting["orca_type"]
        )


    end 
