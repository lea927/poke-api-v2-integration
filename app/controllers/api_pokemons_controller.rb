class ApiPokemonsController < ApplicationController
  include ApiPokemonsHelper
  def index
    if params[:search].present?
      response = get_pokemon(params[:search])

      if response.code == 404
        flash[:alert] = "Pokemon #{params[:search]} #{response.message.downcase}"
        redirect_to api_pokemons_path
        return
      end

      @pokemons = [parsed_response_from(get_pokemon(params[:search]))] if response.code == 200
    else
      @pokemons = parsed_response_from(get_pokemons)&.dig('results')
    end
  end

  def show
    @pokemon = parsed_response_from(get_pokemon(params[:id]))
    @image_url = @pokemon&.dig('sprites', 'front_default')
  end
end
