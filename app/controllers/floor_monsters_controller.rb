class FloorMonstersController < ApplicationController
  # GET /floor_monsters
  # GET /floor_monsters.json
  def index
    @floor_monsters = FloorMonster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @floor_monsters }
    end
  end

  # GET /floor_monsters/1
  # GET /floor_monsters/1.json
  def show
    @floor_monster = FloorMonster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @floor_monster }
    end
  end

  # GET /floor_monsters/new
  # GET /floor_monsters/new.json
  def new
    @floor_monster = FloorMonster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @floor_monster }
    end
  end

  # GET /floor_monsters/1/edit
  def edit
    @floor_monster = FloorMonster.find(params[:id])
  end

  # POST /floor_monsters
  # POST /floor_monsters.json
  def create
    @floor_monster = FloorMonster.new(params[:floor_monster])

    respond_to do |format|
      if @floor_monster.save
        format.html { redirect_to @floor_monster, notice: 'Floor monster was successfully created.' }
        format.json { render json: @floor_monster, status: :created, location: @floor_monster }
      else
        format.html { render action: "new" }
        format.json { render json: @floor_monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /floor_monsters/1
  # PUT /floor_monsters/1.json
  def update
    @floor_monster = FloorMonster.find(params[:id])

    respond_to do |format|
      if @floor_monster.update_attributes(params[:floor_monster])
        format.html { redirect_to @floor_monster, notice: 'Floor monster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @floor_monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floor_monsters/1
  # DELETE /floor_monsters/1.json
  def destroy
    @floor_monster = FloorMonster.find(params[:id])
    @floor_monster.destroy

    respond_to do |format|
      format.html { redirect_to floor_monsters_url }
      format.json { head :no_content }
    end
  end
end
