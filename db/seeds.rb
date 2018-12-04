PhotoEquipment.destroy_all
Studio.destroy_all
Room.destroy_all
Photographer.destroy_all

studios = Studio.create ([
  {
    name: "2 Iliffe Yard Studio", address: "2 Iliffe Yard Kennington, London, SE17 3QA, UK", telephone_number: "+44 (0)77 6852 5509", email: "bookings@2iliffeyard.co.uk", manager: "John Whitfield", kitchen: true, darkroom: true, parking: true, wi_fi: true, underground_station: "Kennington",
     description: "Photographic studio and darkroom.", photo_path: "iliffe_yard.jpg"
  },
  {
    name: "Pullens Yards", address: "c/- 2 Iliffe Yard Kennington, London, SE17 3QA, UK", telephone_number: "+44 (0)77 3032 7043", email: "bookings@randomstudio.co.uk", manager: "Alan Robertson", kitchen: false, darkroom: false, parking: true, wi_fi: false, underground_station: "Kennington",
     description: "All three Pullens common yards areas.", photo_path: "peacock_yard.jpg"
  }
  ])

photo_equipments = PhotoEquipment.create([
  {
    name: "Bowens Gemini 400 Kit",
    category: "Lighting",
    description: "The Bowens Gemini 400Rx Twin Head Umbrella Kit is part of the award-winning Gemini flash system which now includes two new models with built-in Pulsar radio. The Gemini Rx range is as compact and lightweight as the standard Gemini flash heads but now includes a built-in Pulsar radio receiver controlled via a simple, single push button. The Pulsar radio allows full control over 24 different radio zones, using four channels and six studio settings, enabling photographers to isolate various light sources or combining them and firing them all at once, without leaving your camera. The inclusion of the integrated Pulsar radio receiver coupled with the versatility of featuring both mains and battery power operation makes the Gemini Rx one of the most resourceful monolight systems available today. In addition to the 2 heads the kit includes a Pulsar Tx transmitter, 2 90cm umbrellas, 2 wide angle reflectors, 2 light stands, a traveller case, 2 modelling lamps, 2 mains leads and a sync lead.",
    photo_path: "photo_equipments/bowens_400_kit.jpg"
  },
  {
    name: 'Bowens Gemini 250',
    category: "Lighting",
    description: "This is a Bowens Esprit Gemini 250 watt/second AC/DC monolight. This monolight can power down to 1/4 power, which makes it very suitable for use with digital cameras and for augmenting sunlight outdoors. Modeling light may be adjusted from full to 1/32 power. Compatible with all Bowens flash head accessories. The open-ended yoke design permits more angled positioning of the monolight.",
    photo_path: "photo_equipments/bowens_250.jpeg"
  },
  {
    name: 'Elinchrom Fan',
    category: "Other",
    description: "The fan is equipped with regulator, which benefit you a free control on weak or strong wind, 3m speed-control cable and 5m power cable enable your remote operation,cylinder category metal casing, integration of metal fan blade with motor, compact structure, internationally advanced power frequency axial fan, flange installation, reliable connection, low power consumption (130W); high rotate speed (2600r/min); low noise (≤72dB); large air volume (20m3/min); light weight (net weight: 7kg); small size (Φ25cmx30cm)",
    photo_path: "photo_equipments/elinchrom_fan.png"
  },
  {
    name: 'Steamer',
    category: "Other",
    description:  "This Rowenta 'IS6200 Compact Valet' garment steamer is tailor made to remove creases and even odours from all fabrics, including delicate ones, with a powerful vertical steam emission of 30g/min. The powerful steam emission is intended to smooth out even the tiniest of creases and go as far as hems and buttons without exposing clothing to potentially harmful hot metal or soleplates. It also boasts a quick sixty second heat up time and a removable 2.4L water tank for easy cleaning.",
    photo_path: "photo_equipments/steamer.png"
  },
  {
    name: 'White Seamless Photography Background Paper',
    category: "Background Paper",
    description:  "Colorama Paper Background 3.55 x 15m Black SKU LL CO868 (AVAILABLE). High quality paper, fine tooth non-reflective surface",
    photo_path: "photo_equipments/background_paper_white.png"
  },
  {
    name: 'Black Photographic Studio Background Paper Roll',
    category: "Background Paper",
    description:  "Colorama Paper Background 3.55 x 15m Black SKU LL CO868 (AVAILABLE). High quality paper, fine tooth non-reflective surface",
    photo_path: "photo_equipments/background_paper_black.png"
  }
  ])


rooms = Room.create([
  {
    name: "Photographic Room", studio_id: 1, dimensions: "4.5m x 6.6m",
    description: "Photographic studio with 30m2 floorspace. Fully equipped, with adjoining kitchen. Full blackout possible.",
    photo_path: "plan_studio-de99f8bf.png"
  },
  {
    name: "Darkroom", studio_id: 1, dimensions: "2.7m x 4.9m",
    description: "Darkroom with full facilities.",
    photo_path: "plan_studio-de99f8bf.png"
  },
  {
    name: "Clements Yard", studio_id: 2, dimensions: "3m x 4.2m",
    description: "Situated off Iliffe Street, this yard is the smallest of the three Pullen's yards.",
    photo_path: "clements_yard.jpg"
  },
  {
    name: "Peacock Yard", studio_id: 2, dimensions: "2.7m x 4.9m",
    description: "Situated off Iliffe Street, this yard has a triangular shape.",
    photo_path: "peacock_yard.jpg"
  },
  {
    name: "Iliffe Yard", studio_id: 2, dimensions: "5.4m x 6.4m",
    description: "Situated off Crampton Street, this yard is a long straight narrow road.",
    photo_path: "iliffe_yard.jpg"
  }
])

photographers = Photographer.create([
    {
      first_name: "Joaquim", last_name: "Barreto", username: "joaquim", password_digest: "password", email: "joaquim@2iliffeyard.co.uk", telephone_number: "+44 7879117888", age: 35, bio: "I'm one hell of a cool guy who like taking photos, I'm learning to code right now so watch this space Disney.", specialty: "Everything", is_admin?: true
    },
    {
      first_name: "Paul", last_name: "Clark", username: "paul", password_digest: "password", email: "paul@studiopaul.co.uk", telephone_number: "+44 9329328049898", age: 28, bio: "Yes I'm a real photographer", specialty: "Taking photos", is_admin?: true
    },
    {
      first_name: "Alan", last_name: "Robertson", username: "alan", password_digest: "password", email: "alan@2iliffeyard.co.uk", telephone_number: "+44 7730327043", age: 60, bio: "Hi my name is Alan, I'm a photographer.", specialty: "Weddings", is_admin?: false
    },
    {
      first_name: "John", last_name: "Whitfield", username: "john", password_digest: "password", email: "johnwhitfield@msn.com", telephone_number: "+44 7768525509", age: 40, bio: "I like taking photos of stuff", specialty: "Product", is_admin?: false
    },
    {
      first_name: "Harry", last_name: "Isaacs", username: "harry", password_digest: "password", email: "johnwhitfield@msn.com", telephone_number: "+44 7768525509", age: 40, bio: "I like taking photos of stuff", specialty: "Glamour", is_admin?: false
    },
    {
      first_name: "Justin", last_name: "Barton", username: "justin", password_digest: "password", email: "justin@justinbarton.com", telephone_number: "+44 7957336830", age: 40, bio: "I like taking photos of stuff", specialty: "Product", is_admin?: false
    },
    {
      first_name: "Lee", last_name: "Miller", username: "leemiller", password_digest: "password", email: "lee@miller.com", telephone_number: "+44 7879117888", age: 40, bio: "People who understand how to negotiate are always going to do better", specialty: "Fashion", is_admin?: false
    }
])
