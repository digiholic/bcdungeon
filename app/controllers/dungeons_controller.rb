class DungeonsController < ApplicationController
  # GET /dungeons
  # GET /dungeons.json
  def index
    @dungeons = Dungeon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dungeons }
    end
  end

  # GET /dungeons/1
  # GET /dungeons/1.json
  def show
    @dungeon = Dungeon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dungeon }
    end
  end

  # GET /dungeons/new
  # GET /dungeons/new.json
  def new
    @dungeon = Dungeon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dungeon }
    end
  end

  # GET /dungeons/1/edit
  def edit
    @dungeon = Dungeon.find(params[:id])
  end

  # POST /dungeons
  # POST /dungeons.json
  def create
    @dungeon = Dungeon.new(params[:dungeon])

    respond_to do |format|
      if @dungeon.save
        format.html { redirect_to @dungeon, notice: 'Dungeon was successfully created.' }
        format.json { render json: @dungeon, status: :created, location: @dungeon }
      else
        format.html { render action: "new" }
        format.json { render json: @dungeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dungeons/1
  # PUT /dungeons/1.json
  def update
    @dungeon = Dungeon.find(params[:id])

    respond_to do |format|
      if @dungeon.update_attributes(params[:dungeon])
        format.html { redirect_to @dungeon, notice: 'Dungeon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dungeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dungeons/1
  # DELETE /dungeons/1.json
  def destroy
    @dungeon = Dungeon.find(params[:id])
    @dungeon.destroy

    respond_to do |format|
      format.html { redirect_to dungeons_url }
      format.json { head :no_content }
    end
  end
end
