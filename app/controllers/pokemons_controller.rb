class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @pokemons }
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])

    respond_to do |format|
      format.html  # show.html.erb
      format.json  { render :json => @pokemon }
    end
  end

  def new
    @pokemon = Pokemon.new

    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @pokemon }
    end
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)

    respond_to do |format|
      if @pokemon.save
        format.html  { redirect_to(@pokemon,
                                   :notice => 'Pokemon was successfully created.') }
        format.json  { render :json => @pokemon,
                              :status => :created, :location => @pokemon }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @pokemon.errors,
                              :status => :unprocessable_entity }
      end
    end
  end

  def update
    @pokemon = Pokemon.find(params[:id])

    respond_to do |format|
      if @pokemon.update(pokemon_params)
        format.html  { redirect_to(@pokemon,
                                   :notice => 'Pokemon was successfully updated.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @pokemon.errors,
                              :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy

    respond_to do |format|
      format.html { redirect_to pokemons_url }
      format.json { head :no_content }
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :base_experience, :height, :is_default, :order, :weight, :location_area_encounters)
  end
end
