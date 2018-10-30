class StaticController < ApplicationController

    def home
        @first_name = params["first_name"]
        @gossips = Gossip.all
    end

    def presentation

    end

    def show_contact

    end

    def first_name
    end

    def gossip
      @gossip = Gossip.find(params["id"])
    end

end
