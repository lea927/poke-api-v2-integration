# Pokedex Rails App

This application serves as a Pokedex, showcasing Pokémon details from both a local database (Offline Pokedex) and an online source via the [Poke-api-v2 API](https://github.com/rdavid1099/poke-api-v2) (Online Pokedex).

## Features
__1. Offline Pokedex:__
- Displays a list of Pokémon from the local database.
- Supports CRUD (Create, Read, Update, Delete) functionalities.

__2. Online Pokedex:__
- Displays a list of Pokémon fetched from the Poke-api-v2.
- Users can search for Pokémon by name. Search results are displayed on the Pokémon index page.
- Clicking on a specific Pokémon will show detailed information about it, including an image.

__3. Efficiency and User Experience:__
- Uses pagination for efficient data retrieval and display. This ensures a smoother and faster user experience by loading data in chunks.
- Implements caching mechanisms to speed up frequently accessed data and reduce redundant API calls, enhancing user experience and application performance.

## Prerequisites
    Ruby: 2.7.6
    Rails: 7.0.0

## Setting Up
1. Clone the Repository:
```shell
git clone https://github.com/lea927/poke-api-v2-integration.git pokedex-app
cd pokedex-app
```
2. Install Gems:
```shell
bundle install
```
3. Setup the Database:  
   Set up the database, perform migrations and seed file:
```shell
rails db:create
rails db:migrate
rails db:seed
```
4. Start the Rails Server:  
   Now, start the Rails server:
```shell
rails s
```
Open your browser and navigate to http://localhost:3000.

Happy coding and exploring the world of Pokémon! 🧑‍💻

## Disclaimer
This is just a basic template. You can expand upon it, adding sections like 'Testing', 'Deployment', 'Known Issues', 'Acknowledgments', etc.
