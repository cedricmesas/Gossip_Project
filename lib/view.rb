require_relative './controller'

class View
    def create_gossip
        puts "Quel est ton nom ?"
        author = gets.chomp
        puts "Quel est ton gossip ?"
        content = gets.chomp
        params = Hash.new
        params["author"] = author
        params["content"] = content
        params
    end
    
    def index_gossips(gossips)
        @all_gossips
        each 
        puts all_gossips
    end
end