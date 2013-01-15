class LaboratoiresController < ApplicationController
  # GET /laboratoires
  # GET /laboratoires.json
  def index
    @laboratoires = Laboratoire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @laboratoires }
    end
  end

  # GET /laboratoires/1
  # GET /laboratoires/1.json
  def show
    @laboratoire = Laboratoire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @laboratoire }
    end
  end

  # GET /laboratoires/new
  # GET /laboratoires/new.json
  def new
    @laboratoire = Laboratoire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @laboratoire }
    end
  end

  # GET /laboratoires/1/edit
  def edit
    @laboratoire = Laboratoire.find(params[:id])
  end

  # POST /laboratoires
  # POST /laboratoires.json
  def create
    @laboratoire = Laboratoire.new(params[:laboratoire])

    respond_to do |format|
      if @laboratoire.save
        format.html { redirect_to @laboratoire, :notice => 'Laboratoire was successfully created.' }
        format.json { render :json => @laboratoire, :status => :created, :location => @laboratoire }
      else
        format.html { render :action => "new" }
        format.json { render :json => @laboratoire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /laboratoires/1
  # PUT /laboratoires/1.json
  def update
    @laboratoire = Laboratoire.find(params[:id])

    respond_to do |format|
      if @laboratoire.update_attributes(params[:laboratoire])
        format.html { redirect_to @laboratoire, :notice => 'Laboratoire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @laboratoire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /laboratoires/1
  # DELETE /laboratoires/1.json
  def destroy
    @laboratoire = Laboratoire.find(params[:id])
    @laboratoire.destroy

    respond_to do |format|
      format.html { redirect_to laboratoires_url }
      format.json { head :no_content }
    end
  end
end
