class AuteursController < ApplicationController
  # GET /auteurs
  # GET /auteurs.json
  def index
    @auteurs = Auteur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @auteurs }
    end
  end

  # GET /auteurs/1
  # GET /auteurs/1.json
  def show
    @auteur = Auteur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @auteur }
    end
  end

  # GET /auteurs/new
  # GET /auteurs/new.json
  def new
    @auteur = Auteur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @auteur }
    end
  end

  # GET /auteurs/1/edit
  def edit
    @auteur = Auteur.find(params[:id])
  end

  # POST /auteurs
  # POST /auteurs.json
  def create
    @auteur = Auteur.new(params[:auteur])

    respond_to do |format|
      if @auteur.save
        format.html { redirect_to @auteur, :notice => 'Auteur was successfully created.' }
        format.json { render :json => @auteur, :status => :created, :location => @auteur }
      else
        format.html { render :action => "new" }
        format.json { render :json => @auteur.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /auteurs/1
  # PUT /auteurs/1.json
  def update
    @auteur = Auteur.find(params[:id])

    respond_to do |format|
      if @auteur.update_attributes(params[:auteur])
        format.html { redirect_to @auteur, :notice => 'Auteur was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @auteur.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /auteurs/1
  # DELETE /auteurs/1.json
  def destroy
    @auteur = Auteur.find(params[:id])
    @auteur.destroy

    respond_to do |format|
      format.html { redirect_to auteurs_url }
      format.json { head :no_content }
    end
  end
end
