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


  User.create!(id: 1)
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
        )


    end 
  
  Whale.create!(
    common_name: "Southern Resident Orca",
    genus: "Orcinus",
    species: "orca",
    photo: "../assets/images/orca.jpg"
  )

  Whale.create!(
    common_name: "Transient Orca",
    genus: "Orcinus",
    species: "orca",
    photo: "../assets/images/orca.jpg"
  )

  Whale.create!(
    common_name: "Humpback",
    genus: "Megaptera",
    species: "novaeangliae",
    description: "Large baleen whale ranging from 14-16 meters in length. Humpback whales can weight up to ",
    photo: "../assets/images/humpback.jpeg"
  )

  Whale.create!(
    common_name: "Minke",
    genus: "Balaenoptera",
    species: "acutorostrata",
    photo: "../assets/images/Minke_Whale.jpg"
  )

  Whale.create!(
    common_name: "Gray",
    genus: "Eschrichtius",
    species:"robustus",
    description: "Baleen whale with dark gray color that is often covered in white patches. Can grow to lenths of 14-15 meters and weights up to 40 tons",
    range: "Baja Peninsula to Alaska",
    photo: "../assets/images/gray_whale.jpg"
  )