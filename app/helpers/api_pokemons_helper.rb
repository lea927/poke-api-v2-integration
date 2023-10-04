module ApiPokemonsHelper

  BASE_URI = 'https://pokeapi.co/api/v2/pokemon/'

  def get_pokemons
    begin
      HTTParty.get("#{BASE_URI}?limit=100")
    rescue HTTParty::Error => e
      Rails.logger.error(e)
    end
  end

  def get_pokemon(name)
    begin
      HTTParty.get("#{BASE_URI}#{name}")
    rescue HTTParty::Error => e
      Rails.logger.error(e)
    end
  end

  def parsed_response_from(response)
    JSON.parse(response.body) if response&.body
  end
end
