PhotoEquipment.destroy_all
Studio.destroy_all
Room.destroy_all
Photographer.destroy_all

studios = Studio.create ([
  {
    name: "2iliffeyard", address: "2 Iliffe Yard Kennington, London, SE17 3QA, UK", telephone_number: "+44 (0)77 6852 5509", email: "bookings@2iliffeyard.co.uk", manager: "Joaquim Baretto", kitchen: true, darkroom: true, parking: true, wi_fi: true, underground_station: "Kennington"
  },
  {
    name: "RandomStudio", address: "2 Studio Street, London, WERKJ3928, UK", telephone_number: "+44 (0)17 9345 0000", email: "bookings@randomstudio.co.uk", manager: "Dan K", kitchen: true, darkroom: true, parking: true, wi_fi: false, underground_station: "Liverpool Street"
  },
  {
    name: "StudioPaul", address: "2 Roady Road, London, SE3 ERO, UK", telephone_number: "+44 (0)77 9858 4450", email: "bookings@studiopaul.co.uk", manager: "Paul Clark", kitchen: true, darkroom: true, parking: false, wi_fi: true, underground_station: "Moorgate"
  }
  ])

photo_equipments = PhotoEquipment.create([
  {
    name: "Bolt VB-11 Bare Bulb Flash Kit with Cyclone PP-400DR Power Pack",
    category: "Lighting",
    description: "The VB-11 Bare Bulb Flash in this kit looks like an oversized on-camera flash with a large, round removable reflector on it. While it does have a cold shoe, it's also stand-mountable, with the purchase of an adapter. The manual flash has power adjustment from Full to 1/128 power and will recycle to full power in 1 second when paired with an external battery pack like the Cyclone PP-400DR that’s included in this kit. The pack separates from the controller so you can swap it out for a fresh battery. It weighs 1.2 lb and comes with a multi-voltage charger.",
    studio_id: 1,
    photo_path: "photo_equipments/bolt_vb_22_bare_bulb_flash_1019097.jpg"
  },
  {
    name: 'Impact Venture TTL-600 Battery-Powered Monolight Kit',
    category: "Lighting",
    description: 'Designed to be fast and portable, Impact’s Venture TTL-600 Monolight Kit is for those looking for advanced equipment with good value. The TTL-600 is quite fast with a minimum flash duration of 1/19,500-second and has a maximum power of 600Ws, making it useful in a range of conditions. It can be set up with TTL using a controller for Canon, Nikon, or Sony cameras. Also, this monolight can run on battery or AC power, and the kit includes a TTL controller, spare battery, and a 32" hex softbox for getting started right away.',
    studio_id: 2,
    photo_path: "photo_equipments/Impact Venture TTL-600.jpeg"
  },
  {
    name: "Bolt VB-11 Bare Bulb Flash Kit with Cyclone PP-400DR Power Pack",
    category: "Lighting",
    description: "The VB-11 Bare Bulb Flash in this kit looks like an oversized on-camera flash with a large, round removable reflector on it. While it does have a cold shoe, it's also stand-mountable, with the purchase of an adapter. The manual flash has power adjustment from Full to 1/128 power and will recycle to full power in 1 second when paired with an external battery pack like the Cyclone PP-400DR that’s included in this kit. The pack separates from the controller so you can swap it out for a fresh battery. It weighs 1.2 lb and comes with a multi-voltage charger.",
    studio_id: 2,
    photo_path: "photo_equipments/bolt_vb_22_bare_bulb_flash_1019097.jpg"
  },
  { name: 'Impact Venture TTL-600 Battery-Powered Monolight Kit',
    category: "Lighting",
    description: 'Designed to be fast and portable, Impact’s Venture TTL-600 Monolight Kit is for those looking for advanced equipment with good value. The TTL-600 is quite fast with a minimum flash duration of 1/19,500-second and has a maximum power of 600Ws, making it useful in a range of conditions. It can be set up with TTL using a controller for Canon, Nikon, or Sony cameras. Also, this monolight can run on battery or AC power, and the kit includes a TTL controller, spare battery, and a 32" hex softbox for getting started right away.',
    studio_id: 2,
    photo_path: "photo_equipments/Impact Venture TTL-600.jpeg"
  },
  {
    name: "Bolt VB-11 Bare Bulb Flash Kit with Cyclone PP-400DR Power Pack",
    category: "Lighting",
    description: "The VB-11 Bare Bulb Flash in this kit looks like an oversized on-camera flash with a large, round removable reflector on it. While it does have a cold shoe, it's also stand-mountable, with the purchase of an adapter. The manual flash has power adjustment from Full to 1/128 power and will recycle to full power in 1 second when paired with an external battery pack like the Cyclone PP-400DR that’s included in this kit. The pack separates from the controller so you can swap it out for a fresh battery. It weighs 1.2 lb and comes with a multi-voltage charger.",
    studio_id: 3,
    photo_path: "photo_equipments/bolt_vb_22_bare_bulb_flash_1019097.jpg"
  },
  {
    name: 'Studio Fan SF-01',
    category: "Fan",
    description: "The fan is equipped with regulator, which benefit you a free control on weak or strong wind, 3m speed-control cable and 5m power cable enable your remote operation,cylinder category metal casing, integration of metal fan blade with motor, compact structure, internationally advanced power frequency axial fan, flange installation, reliable connection, low power consumption (130W); high rotate speed (2600r/min); low noise (≤72dB); large air volume (20m3/min); light weight (net weight: 7kg); small size (Φ25cmx30cm)",
    studio_id: 1,
    photo_path: "photo_equipments/SF-01-2.jpg"
  },
  {
    name: 'Hair fan SF-05',
    category: "Fan",
    description:  "The blower is equipped with output speed controller, benefit you a free control on weak or strong wind. 5m power cable with dimmer enable your remote operation. International advanced exterior rotor asynchronous blower, metal impeller, compact structure. Lower power consumption, high speed, large air volume, small size, low noise, light weight.",
    studio_id: 1,
    photo_path: "photo_equipments/1-500x500.JPG"
  },
  {
    name: 'Studio Fan SF-01',
    category: "Fan",
    description: "The fan is equipped with regulator, which benefit you a free control on weak or strong wind, 3m speed-control cable and 5m power cable enable your remote operation,cylinder category metal casing, integration of metal fan blade with motor, compact structure, internationally advanced power frequency axial fan, flange installation, reliable connection, low power consumption (130W); high rotate speed (2600r/min); low noise (≤72dB); large air volume (20m3/min); light weight (net weight: 7kg); small size (Φ25cmx30cm)",
    studio_id: 2,
    photo_path: "photo_equipments/SF-01-2.jpg"
  },
  {
    name: 'Studio Fan SF-01',
    category: "Fan",
    description: "The fan is equipped with regulator, which benefit you a free control on weak or strong wind, 3m speed-control cable and 5m power cable enable your remote operation,cylinder category metal casing, integration of metal fan blade with motor, compact structure, internationally advanced power frequency axial fan, flange installation, reliable connection, low power consumption (130W); high rotate speed (2600r/min); low noise (≤72dB); large air volume (20m3/min); light weight (net weight: 7kg); small size (Φ25cmx30cm)",
    studio_id: 3,
    photo_path: "photo_equipments/SF-01-2.jpg"
  },
  { name: 'Hair fan SF-05',
    category: "Fan",
    description:  "The blower is equipped with output speed controller, benefit you a free control on weak or strong wind. 5m power cable with dimmer enable your remote operation. International advanced exterior rotor asynchronous blower, metal impeller, compact structure. Lower power consumption, high speed, large air volume, small size, low noise, light weight.",
    studio_id: 3,
    photo_path: "photo_equipments/1-500x500.JPG"
  },
  {
    name: 'White Seamless Photography Background Paper',
    category: "Photography Background Paper",
    description:  "A wider photography background paper roll, ideal as a background for product photography or portraiture. The original Seamless photography background paper / photographic studio backdrop in the full range of 50 colours on a 2.72 metre wide roll, 140 gsm. Core size 5cm 2 inches).",
    studio_id: 1,
    photo_path: "photo_equipments/seamless-photography-background-backdrop-paper-how-to-hang-diy-ideas-8.jpg"
  },
  {
    name: 'Black Photographic Studio Background Paper Roll',
    category: "Photography Background Paper",
    description:  "Tetenal by Savage Widetone Seamless Studio Background Paper has been the professional photographer’s top choice for over 60 years. Our Tetenal seamless studio background paper by Savage is hands-down the most cost-effective solution for creating smooth and even backgrounds in portraits, commercial photography, product photography, video photography, and much more.",
    studio_id: 1,
    photo_path: "photo_equipments/dark-studio-background_1258-14.jpg"
  },
  {
    name: 'White Seamless Photography Background Paper',
    category: "Photography Background Paper",
    description:  "A wider photography background paper roll, ideal as a background for product photography or portraiture. The original Seamless photography background paper / photographic studio backdrop in the full range of 50 colours on a 2.72 metre wide roll, 140 gsm. Core size 5cm 2 inches).",
    studio_id: 3,
    photo_path: "photo_equipments/seamless-photography-background-backdrop-paper-how-to-hang-diy-ideas-8.jpg"
  },
  {
    name: 'Black Photographic Studio Background Paper Roll',
    category: "Photography Background Paper",
    description:  "Tetenal by Savage Widetone Seamless Studio Background Paper has been the professional photographer’s top choice for over 60 years. Our Tetenal seamless studio background paper by Savage is hands-down the most cost-effective solution for creating smooth and even backgrounds in portraits, commercial photography, product photography, video photography, and much more.",
    studio_id: 3,
    photo_path: "photo_equipments/dark-studio-background_1258-14.jpg"
  },
  ])


rooms = Room.create([
  {
    name: "Shooting Room", studio_id: 1, dimensions: "4.5m x 6.6m", description: "Photographic studio with 30m2 floorspace. Fully equipped, with adjoining kitchen. Full blackout possible.", photo_path: "DSC_3784.jpg"
  },
  {
    name: "Darkroom", studio_id: 1, dimensions: "2.7m x 4.9m", description: "Darkroom with full facilities.", photo_path: "plan_studio-de99f8bf.png"
  },
  {
    name: "Shooting Room 1", studio_id: 2, dimensions: "3m x 4.2m", description: "Small shooting room perfect for close-up product shots", photo_path: "84263364-behind-the-scenes-of-shooting-video-production-in-a-studio-with-small-set-of-professional-lighting-e.jpg"
  },
  {
    name: "Darkroom", studio_id: 2, dimensions: "2.7m x 4.9m", description: "Darkroom with full facilities.", photo_path: "SB_Darkroom_t958.jpg"
  },
  {
    name: "Shooting Room 2", studio_id: 2, dimensions: "5.4m x 6.4m", description: "Larger studio with with all facilities.", photo_path: "venue-yellow-hives-pj-kl-small-event-space-photo-shoot-interview_m1479873221_m1483525250.JPG"
  },
  {
    name: "Darkroom", studio_id: 3, dimensions: "4m x 2m", description: "Darkroom with full facilities.", photo_path: "MG_2527_stuart_darkroom_email_copy_1024x1024.jpg"
  },
  {
    name: "Second studio room", studio_id: 3, dimensions: "5m x 6", description: "Multi-purpose photographic studio. Full blackout possible.", photo_path: "MG_2527_stuart_darkroom_email_copy_1024x1024.jpg"
  },
  {
    name: "Main studio room", studio_id: 3, dimensions: "10m x 6m", description: "Very large photography studio with full blackout and self-contained kitchen area.", photo_path: "7a9c51056c0eddb899425f1d69849b0b.jpg"
  }
  ])

  photographers = Photographer.create ([
    {
      first_name: "Joaquim", last_name: "Barreto", username: "jbarreto", password: "password", email: "joaquim@2iliffeyard.co.uk", telephone_number: "+44 932498232398", age: 35, bio: "I'm one hell of a cool guy who like taking photos, I'm learning to code right now so watch this space Disney.", specialty: "Everything", is_admin?: true
    },
    {
      first_name: "Paul", last_name: "Clark", username: "pclark", password: "password", email: "paul@studiopaul.co.uk", telephone_number: "+44 9329328049898", age: 28, bio: "Yes I'm a real photographer", specialty: "Taking photos", is_admin?: true
    },
    {
      first_name: "John", last_name: "Smith", username: "jsmith", password: "password", email: "jsmith@gmail.co.uk", telephone_number: "+44 9323423498", age: 60, bio: "Hi my name is John, I'm a photographer.", specialty: "Weddings", is_admin?: false
    },
    {
      first_name: "Joe", last_name: "Bloggs", username: "jbloggs", password: "password", email: "jbloggs@yahoo.co.uk", telephone_number: "+44 93292343249898", age: 40, bio: "I like taking photos of stuff", specialty: "Yes", is_admin?: false
    }
    ])
