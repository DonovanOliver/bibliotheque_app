class AuteurController < ApplicationController
  def new
  	@auteur =Auteur.new
  end

  def show
  	@auteur =Auteur.find(params[:id])
  end

  def create 
  	@auteur = Auteur.new(params[:user])
  	if @auteur.save
  		flash[:success] = "Bienvenue a Bibliotheque App"
  		redirect_to inscription_path(@auteur)
  	else
  		render 'new'
  	end
  end
end