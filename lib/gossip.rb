require 'csv'

require_relative './controller'

class Gossip
    attr_accessor :author, :content
    
    def initialize(author, content)
        @content = content
        @author = author
    end

    def save
        CSV.open('db/gossip.csv', 'a') do |csv|
            csv << [@author, @content]
        end
    end

    def self.all
        all_gossips = Array.new
        CSV.foreach('db/gossip.csv') do |row|
            gossip_provisoire = Gossip.new(row) # permet de créer un objet gossip
            all_gossips << gossip_provisoire # permet de rajouter le gossip provisoire au array
        end
        return all_gossips 
    end
end