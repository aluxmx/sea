class InvitadosController < ApplicationController
  # GET /invitados
  # GET /invitados.xml
  def index
    @invitados = Invitado.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @invitados }
    end
  end

  # GET /invitados/1
  # GET /invitados/1.xml
  def show
    @invitado = Invitado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @invitado }
    end
  end

  # GET /invitados/new
  # GET /invitados/new.xml
  def new
    @invitado = Invitado.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @invitado }
    end
  end

  # GET /invitados/1/edit
  def edit
    @invitado = Invitado.find(params[:id])
  end

  # POST /invitados
  # POST /invitados.xml
  def create
    @invitado = Invitado.new(params[:invitado])

    respond_to do |format|
      if @invitado.save
        format.html { redirect_to(@invitado, :notice => 'Invitado was successfully created.') }
        format.xml  { render :xml => @invitado, :status => :created, :location => @invitado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @invitado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /invitados/1
  # PUT /invitados/1.xml
  def update
    @invitado = Invitado.find(params[:id])

    respond_to do |format|
      if @invitado.update_attributes(params[:invitado])
        format.html { redirect_to(@invitado, :notice => 'Invitado was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @invitado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /invitados/1
  # DELETE /invitados/1.xml
  def destroy
    @invitado = Invitado.find(params[:id])
    @invitado.destroy

    respond_to do |format|
      format.html { redirect_to(invitados_url) }
      format.xml  { head :ok }
    end
  end

  def busqueda_invitados
    render :text => "busqueda"
  end

end
