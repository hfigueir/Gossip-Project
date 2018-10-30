class StaticController < ApplicationController

  def bienvenue
    @first_name = params[:first_name]
    @gossips = Gossip.all
    @authors = []
    @gossips.each do |gossip|
    @authors << Author.find(gossip.author_id).first_name
    end
  end

  def detailgossip
    @id = params[:id]
    @gossip = Gossip.find(params[:id])
  end
end
