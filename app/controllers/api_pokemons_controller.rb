class ApiPokemonsController < ApplicationController
  include ApiPokemonsHelper
  def index
    @pokemons = parsed_response_from(get_pokemons)&.dig('results')
  end

  def show
    @pokemon = parsed_response_from(get_pokemon(params[:id]))
    @image_url = @pokemon&.dig('sprites', 'front_default')
  end
end
