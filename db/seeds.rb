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
