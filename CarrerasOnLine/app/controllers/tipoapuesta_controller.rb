class TipoapuestaController < ApplicationController
  # GET /tipoapuesta
  # GET /tipoapuesta.json
  def index
    @tipoapuesta = Tipoapuestum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipoapuesta }
    end
  end

  # GET /tipoapuesta/1
  # GET /tipoapuesta/1.json
  def show
    @tipoapuestum = Tipoapuestum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipoapuestum }
    end
  end

  # GET /tipoapuesta/new
  # GET /tipoapuesta/new.json
  def new
    @tipoapuestum = Tipoapuestum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipoapuestum }
    end
  end

  # GET /tipoapuesta/1/edit
  def edit
    @tipoapuestum = Tipoapuestum.find(params[:id])
  end

  # POST /tipoapuesta
  # POST /tipoapuesta.json
  def create
    @tipoapuestum = Tipoapuestum.new(params[:tipoapuestum])

    respond_to do |format|
      if @tipoapuestum.save
        format.html { redirect_to @tipoapuestum, notice: 'Tipoapuestum was successfully created.' }
        format.json { render json: @tipoapuestum, status: :created, location: @tipoapuestum }
      else
        format.html { render action: "new" }
        format.json { render json: @tipoapuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipoapuesta/1
  # PUT /tipoapuesta/1.json
  def update
    @tipoapuestum = Tipoapuestum.find(params[:id])

    respond_to do |format|
      if @tipoapuestum.update_attributes(params[:tipoapuestum])
        format.html { redirect_to @tipoapuestum, notice: 'Tipoapuestum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipoapuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoapuesta/1
  # DELETE /tipoapuesta/1.json
  def destroy
    @tipoapuestum = Tipoapuestum.find(params[:id])
    @tipoapuestum.destroy

    respond_to do |format|
      format.html { redirect_to tipoapuesta_url }
      format.json { head :no_content }
    end
  end
end
