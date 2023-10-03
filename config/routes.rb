Rails.application.routes.draw do
  resources :api_pokemons, only: [:index, :show]
  resources :pokemons

  root to: "pokemons#index"
end
