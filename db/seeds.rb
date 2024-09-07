# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Band.destroy_all
puts "destroy all bands"

Band.create!(
  name: 'Megadeth',
  members: {
    "Dave Mustaine": "guitars, lead vocals",
    "David Ellefson": "bass, backing vocals",
    "Marty Friedman": "guitars",
    "Nick Menza": "drums, backing vocals"
  },
  albums: [
    "Killing Is My Business... and Business Is Good!",
    "Peace Sells... but Who's Buying?",
    "Rust in Peace",
    "Dystopia"
  ],
  country: 'USA'
)

Band.create!(
  name: '妖精帝國',
  members: {
    "伊月ゆい": "lead vocals",
    "名波": "bass",
    "サイバ": "guitars",
    "ガイト": "drums",
  },
  albums: [
    "The Age of Villains",
    "Shadow Corps[e]",
    "Hades: The Other World",
    "Stigma"
  ],
  country: '日本'
)


Band.create!(
  name: 'High on Fire',
  members: {
    "Matt Pike": "guitars, lead vocals",
    "Jeff Matz": "bass",
    "Coady Willis": "drums"
  },
  albums: [
    "Blessed Black Wings ",
    "Death Is This Communion",
    "Snakes for the Divine",
    "Luminiferous",
    "Electric Messiah"
  ],
  country: 'USA'
)




puts "added seeded bands"
