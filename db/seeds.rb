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
          date: sighting["sighted_at"],
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
    description: "Orcas are the largest member of the dolphin family. Orcas are considered whales due to their size, with male orcas reaching lengths up to 30 feet. The Southern Resident community is a small subset of Orcas with a population of around 75 whales in three pods: J, K, and L. Southern Resident Orcas are fish eating whales and their diet consists mainly of Pacific Salmon.",
    range: "Whales from the SRKW community travel along the Pacific Coast from California to British Columbia. These whales tend to fish in the inland waters of the Salish Sea during the summer, which includes the Strait of Juan De Fuca, Georgia Strait, and the Puget Sound.",
    photo: "https://s3.amazonaws.com/whale-tracker/orca-1.jpg"
  )

  Whale.create!(
    common_name: "Transient Orca",
    genus: "Orcinus",
    species: "orca",
    description: "Transient killer whales, also known as Bigg's killer whales, are another sub-type of Orca found in the Salish Sea. Transients tend to live in small family groups that are comprised of 5-10 individuals. These whales feed on marine mammals including seals, sea lions and porpoise, and will occasionally feed on other whale species. Transient sightings in the Salish Sea have been on the rise as the abundance of prey has increased.",
    range: "Transients travel up and down the West Coast and can be found anywhere from California to Alaska.",
    photo: "https://s3.amazonaws.com/whale-tracker/orca-1.jpg"
  )

  Whale.create!(
    common_name: "Humpback",
    genus: "Megaptera",
    species: "novaeangliae",
    description: "Large baleen whale ranging from 14-16 meters in length. Humpback whales can weight between 35 to 50 tons. Humpbacks have long, distinctive pectoral fins that can be one third the length of their body. These whales have large throat pleats that expand during feeding.",
    range: "Humpbacks have one of the longest migrations of any animal on Earth. The North Pacific population of Humpbacks spend their summers feeding in the cool Pacific waters from California to Alaska. In the winter, these whales migrate to warmer waters for breeding and may travel as far as Hawaii and Mexico.",
    photo: "https://s3.amazonaws.com/whale-tracker/humpback-1.jpeg"
  )

  Whale.create!(
    common_name: "Minke",
    genus: "Balaenoptera",
    species: "acutorostrata",
    description: "Minke whales are one of the smaller species of Baleen whales. Females are typically larger than males, reaching 8 meters in length, while males tend to max out around 7 meters. The Common Minke whale has a dark black or gray color with white bands on its pectoral fins.",
    range: "Minke whales spend their spring and summer in the colder waters near Washington and British Columbia and head south to the tropics during fall and winter.",
    photo: "https://s3.amazonaws.com/whale-tracker/Minke_Whale-1.jpg"
  )

  Whale.create!(
    common_name: "Gray",
    genus: "Eschrichtius",
    species:"robustus",
    description: "Baleen whale with dark gray color that is often covered in white patches. Can grow to lengths of 14-15 meters and weights up to 40 tons. Gray whales have a distinctive heart-shaped blow.",
    range: "Gray whales have a long migration that extends from the Baja Peninsula to Alaska",
    photo: "https://s3.amazonaws.com/whale-tracker/gray_whale-1.jpg"
  )