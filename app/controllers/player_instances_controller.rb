class PlayerInstancesController < ApplicationController
  # GET /player_instances
  # GET /player_instances.json
  def index
    @player_instances = PlayerInstance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_instances }
    end
  end

  # GET /player_instances/1
  # GET /player_instances/1.json
  def show
    @player_instance = PlayerInstance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_instance }
    end
  end

  # GET /player_instances/new
  # GET /player_instances/new.json
  def new
    @player_instance = PlayerInstance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_instance }
    end
  end

  # GET /player_instances/1/edit
  def edit
    @player_instance = PlayerInstance.find(params[:id])
  end

  # POST /player_instances
  # POST /player_instances.json
  def create
    @player_instance = PlayerInstance.new(params[:player_instance])

    respond_to do |format|
      if @player_instance.save
        format.html { redirect_to @player_instance, notice: 'Player instance was successfully created.' }
        format.json { render json: @player_instance, status: :created, location: @player_instance }
      else
        format.html { render action: "new" }
        format.json { render json: @player_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_instances/1
  # PUT /player_instances/1.json
  def update
    @player_instance = PlayerInstance.find(params[:id])

    respond_to do |format|
      if @player_instance.update_attributes(params[:player_instance])
        format.html { redirect_to @player_instance, notice: 'Player instance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_instances/1
  # DELETE /player_instances/1.json
  def destroy
    @player_instance = PlayerInstance.find(params[:id])
    @player_instance.destroy

    respond_to do |format|
      format.html { redirect_to player_instances_url }
      format.json { head :no_content }
    end
  end
end
