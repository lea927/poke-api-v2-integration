module ApiPokemonsHelper

  BASE_URI = 'https://pokeapi.co/api/v2/pokemon/'

  def get_pokemons
    begin
      Rails.cache.fetch("get_pokemon_data", expires_in: 1.hour) do
        HTTParty.get("#{BASE_URI}?limit=100")
      end
    rescue HTTParty::Error => e
      Rails.logger.error(e)
    end
  end

  def get_pokemon(name)
    begin
      Rails.cache.fetch("get_pokemon_data", expires_in: 1.hour) do
        HTTParty.get("#{BASE_URI}#{name}")
      end
    rescue HTTParty::Error => e
      Rails.logger.error(e)
    end
  end

  def parsed_response_from(response)
    JSON.parse(response.body) if response&.body
  end
end
