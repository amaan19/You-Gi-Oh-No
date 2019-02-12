# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.create(
      deck_id: 1,
      name: "Kojikocy",
      desc: "A man-hunter with powerful arms that can crush boulders.",
      atk: 1500,
      def: 1200,
      group: "Normal Monster",
      level: 4,
      race: "Warrior",
      element: "EARTH",
      image_url: "https://storage.googleapis.com/ygoprodeck.com/pics/1184620.jpg")
      
