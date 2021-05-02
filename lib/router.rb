require_relative './controller'

class Router
	def initialize
		@controller = Controller.new
	end

	def perform
		puts "Bienvenu au Gossip Project"

		while true
			#afficher le menu
			puts "Quel est ton choix ?"
			puts "1. Je veux créer un gossip"
			puts "2. Je veux regarder la liste des potins"
			puts "4. Je veux sortir de l'appli"
			params = gets.chomp.to_i

			case params #selon les réponses 

			when 1
				puts "Tu vas créer un gossip :) "
				@controller.create_gossip

			when 2 
				puts "Regarde la liste des potins."
				@controller.index_gossips

			when 4
				puts "On se voit bientôt ;)"
				break #sortir de la boucle while. 
			
			else "Recommence." #permet de rester dans la boucle while jusqu'à fournir une bonne réponse
			
			end

		end
	end
end