class PublicationController < ApplicationController
  def new
  	@publication =Publication.new
  end

  def show
  	@publication =Publication.find(params[:id])
  end

  def create 
  	@publication = Publication.new(params[:user])
  	if @publication.save
  		flash[:success] = "Bienvenue a Bibliotheque App"
  		redirect_to creerpublication_path(@publication)
  	else
  		render 'new'
  	end
  end
end