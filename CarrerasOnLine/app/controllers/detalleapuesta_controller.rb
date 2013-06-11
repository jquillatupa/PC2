class DetalleapuestaController < ApplicationController
  # GET /detalleapuesta
  # GET /detalleapuesta.json
  def index
    @detalleapuesta = Detalleapuestum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @detalleapuesta }
    end
  end

  # GET /detalleapuesta/1
  # GET /detalleapuesta/1.json
  def show
    @detalleapuestum = Detalleapuestum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @detalleapuestum }
    end
  end

  # GET /detalleapuesta/new
  # GET /detalleapuesta/new.json
  def new
    @detalleapuestum = Detalleapuestum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @detalleapuestum }
    end
  end

  # GET /detalleapuesta/1/edit
  def edit
    @detalleapuestum = Detalleapuestum.find(params[:id])
  end

  # POST /detalleapuesta
  # POST /detalleapuesta.json
  def create
    @detalleapuestum = Detalleapuestum.new(params[:detalleapuestum])

    respond_to do |format|
      if @detalleapuestum.save
        format.html { redirect_to @detalleapuestum, notice: 'Detalleapuestum was successfully created.' }
        format.json { render json: @detalleapuestum, status: :created, location: @detalleapuestum }
      else
        format.html { render action: "new" }
        format.json { render json: @detalleapuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /detalleapuesta/1
  # PUT /detalleapuesta/1.json
  def update
    @detalleapuestum = Detalleapuestum.find(params[:id])

    respond_to do |format|
      if @detalleapuestum.update_attributes(params[:detalleapuestum])
        format.html { redirect_to @detalleapuestum, notice: 'Detalleapuestum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @detalleapuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalleapuesta/1
  # DELETE /detalleapuesta/1.json
  def destroy
    @detalleapuestum = Detalleapuestum.find(params[:id])
    @detalleapuestum.destroy

    respond_to do |format|
      format.html { redirect_to detalleapuesta_url }
      format.json { head :no_content }
    end
  end
end
