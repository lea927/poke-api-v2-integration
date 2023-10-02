Rails.application.routes.draw do
  resources :pokemons

  root to: "pokemons#index"
end
