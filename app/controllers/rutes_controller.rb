class RutesController < ApplicationController
  # GET /rutes
  # GET /rutes.xml
  def index
    @rutes = Rute.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rutes }
    end
  end

  # GET /rutes/1
  # GET /rutes/1.xml
  def show
    @rute = Rute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rute }
    end
  end

  # GET /rutes/new
  # GET /rutes/new.xml
  def new
    @rute = Rute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rute }
    end
    
  end

  # GET /rutes/1/edit
  def edit
    @rute = Rute.find(params[:id])
  end

  # POST /rutes
  # POST /rutes.xml
  def create
    @rute = Rute.new(params[:rute])

    respond_to do |format|
      if @rute.save
        format.html { redirect_to(@rute, :notice => 'Rute was successfully created.') }
        format.xml  { render :xml => @rute, :status => :created, :location => @rute }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rutes/1
  # PUT /rutes/1.xml
  def update
    @rute = Rute.find(params[:id])

    respond_to do |format|
      if @rute.update_attributes(params[:rute])
        format.html { redirect_to(@rute, :notice => 'Rute was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rutes/1
  # DELETE /rutes/1.xml
  def destroy
    @rute = Rute.find(params[:id])
    @rute.destroy

    respond_to do |format|
      format.html { redirect_to(rutes_url) }
      format.xml  { head :ok }
    end
  end
end
