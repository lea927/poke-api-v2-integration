pokemons = [
  {
    name: "Pikachu",
    base_experience: 112,
    height: 4,
    is_default: true,
    order: 1,
    weight: 60,
    location_area_encounters: "forest"
  },
  {
    name: "Charizard",
    base_experience: 240,
    height: 17,
    is_default: true,
    order: 2,
    weight: 905,
    location_area_encounters: "mountains"
  },
  {
    name: "Bulbasaur",
    base_experience: 64,
    height: 7,
    is_default: true,
    order: 3,
    weight: 69,
    location_area_encounters: "grassland"
  },
  {
    name: "Squirtle",
    base_experience: 63,
    height: 5,
    is_default: true,
    order: 4,
    weight: 90,
    location_area_encounters: "lakes"
  },
  {
    name: "Jigglypuff",
    base_experience: 95,
    height: 5,
    is_default: true,
    order: 5,
    weight: 55,
    location_area_encounters: "grassland"
  },
  {
    name: "Meowth",
    base_experience: 58,
    height: 4,
    is_default: true,
    order: 6,
    weight: 42,
    location_area_encounters: "urban"
  },
  {
    name: "Psyduck",
    base_experience: 64,
    height: 8,
    is_default: true,
    order: 7,
    weight: 196,
    location_area_encounters: "lakes"
  },
  {
    name: "Machop",
    base_experience: 61,
    height: 8,
    is_default: true,
    order: 8,
    weight: 195,
    location_area_encounters: "mountains"
  },
  {
    name: "Tentacool",
    base_experience: 67,
    height: 9,
    is_default: true,
    order: 9,
    weight: 455,
    location_area_encounters: "sea"
  },
  {
    name: "Clefairy",
    base_experience: 91,
    height: 9,
    is_default: true,
    order: 9,
    weight: 455,
    location_area_encounters: "sea"
  }
]

pokemons.each do |pokemon_attrs|
  Pokemon.find_or_create_by(name: pokemon_attrs[:name]) do |pokemon|
    pokemon.base_experience = pokemon_attrs[:base_experience]
    pokemon.height = pokemon_attrs[:height]
    pokemon.is_default = pokemon_attrs[:is_default]
    pokemon.order = pokemon_attrs[:order]
    pokemon.weight = pokemon_attrs[:weight]
    pokemon.location_area_encounters = pokemon_attrs[:location_area_encounters]
  end
end
