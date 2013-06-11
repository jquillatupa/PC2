class CaballoxcarerrasController < ApplicationController
  # GET /caballoxcarerras
  # GET /caballoxcarerras.json
  def index
    @caballoxcarerras = Caballoxcarerra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caballoxcarerras }
    end
  end

  # GET /caballoxcarerras/1
  # GET /caballoxcarerras/1.json
  def show
    @caballoxcarerra = Caballoxcarerra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caballoxcarerra }
    end
  end

  # GET /caballoxcarerras/new
  # GET /caballoxcarerras/new.json
  def new
    @caballoxcarerra = Caballoxcarerra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caballoxcarerra }
    end
  end

  # GET /caballoxcarerras/1/edit
  def edit
    @caballoxcarerra = Caballoxcarerra.find(params[:id])
  end

  # POST /caballoxcarerras
  # POST /caballoxcarerras.json
  def create
    @caballoxcarerra = Caballoxcarerra.new(params[:caballoxcarerra])

    respond_to do |format|
      if @caballoxcarerra.save
        format.html { redirect_to @caballoxcarerra, notice: 'Caballoxcarerra was successfully created.' }
        format.json { render json: @caballoxcarerra, status: :created, location: @caballoxcarerra }
      else
        format.html { render action: "new" }
        format.json { render json: @caballoxcarerra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caballoxcarerras/1
  # PUT /caballoxcarerras/1.json
  def update
    @caballoxcarerra = Caballoxcarerra.find(params[:id])

    respond_to do |format|
      if @caballoxcarerra.update_attributes(params[:caballoxcarerra])
        format.html { redirect_to @caballoxcarerra, notice: 'Caballoxcarerra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @caballoxcarerra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caballoxcarerras/1
  # DELETE /caballoxcarerras/1.json
  def destroy
    @caballoxcarerra = Caballoxcarerra.find(params[:id])
    @caballoxcarerra.destroy

    respond_to do |format|
      format.html { redirect_to caballoxcarerras_url }
      format.json { head :no_content }
    end
  end
end
