require 'will_paginate/array'

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
      response = parsed_response_from(get_pokemons)&.dig('results')
      @pokemons = response.paginate(page: params[:page], per_page: 5)
    end
  end

  def show
    @pokemon = parsed_response_from(get_pokemon(params[:id]))
    @image_url = @pokemon&.dig('sprites', 'front_default')
  end
end
