class SafeHousesController < ApplicationController
  # GET /safe_houses
  # GET /safe_houses.json
  def index
    @safe_houses = SafeHouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @safe_houses }
    end
  end

  # GET /safe_houses/1
  # GET /safe_houses/1.json
  def show
    @safe_house = SafeHouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @safe_house }
    end
  end

  # GET /safe_houses/new
  # GET /safe_houses/new.json
  def new
    @safe_house = SafeHouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @safe_house }
    end
  end

  # GET /safe_houses/1/edit
  def edit
    @safe_house = SafeHouse.find(params[:id])
  end

  # POST /safe_houses
  # POST /safe_houses.json
  def create
    @safe_house = SafeHouse.new(params[:safe_house])

    respond_to do |format|
      if @safe_house.save
        format.html { redirect_to @safe_house, notice: 'Safe house was successfully created.' }
        format.json { render json: @safe_house, status: :created, location: @safe_house }
      else
        format.html { render action: "new" }
        format.json { render json: @safe_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /safe_houses/1
  # PUT /safe_houses/1.json
  def update
    @safe_house = SafeHouse.find(params[:id])

    respond_to do |format|
      if @safe_house.update_attributes(params[:safe_house])
        format.html { redirect_to @safe_house, notice: 'Safe house was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @safe_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /safe_houses/1
  # DELETE /safe_houses/1.json
  def destroy
    @safe_house = SafeHouse.find(params[:id])
    @safe_house.destroy

    respond_to do |format|
      format.html { redirect_to safe_houses_url }
      format.json { head :no_content }
    end
  end
end
