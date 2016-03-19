class PokemonsController < ApplicationController
	def capture
		@caught_pokemon = Pokemon.find(params[:id])
		@caught_pokemon.trainer = current_trainer
		@caught_pokemon.save
		redirect_to root_url
	end

	def damage
		@damaged_pokemon = Pokemon.find(params[:id])
		if @damaged_pokemon.health <= 10
			@damaged_pokemon.destroy
		else
			@damaged_pokemon.health -= 10
			@damaged_pokemon.save
		end
		redirect_to trainer_url(id:@damaged_pokemon.trainer)
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create pokemon_params
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.save
		redirect_to trainer_url(id:current_trainer.id)
	end

	private
	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
