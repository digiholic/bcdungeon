class AttacksController < ApplicationController
  # GET /attacks
  # GET /attacks.json
  def index
    @attacks = Attack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attacks }
    end
  end

  # GET /attacks/1
  # GET /attacks/1.json
  def show
    @attack = Attack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attack }
    end
  end

  # GET /attacks/new
  # GET /attacks/new.json
  def new
    @attack = Attack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attack }
    end
  end

  # GET /attacks/1/edit
  def edit
    @attack = Attack.find(params[:id])
  end

  # POST /attacks
  # POST /attacks.json
  def create
    @attack = Attack.new(params[:attack])

    respond_to do |format|
      if @attack.save
        format.html { redirect_to @attack, notice: 'Attack was successfully created.' }
        format.json { render json: @attack, status: :created, location: @attack }
      else
        format.html { render action: "new" }
        format.json { render json: @attack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attacks/1
  # PUT /attacks/1.json
  def update
    @attack = Attack.find(params[:id])

    respond_to do |format|
      if @attack.update_attributes(params[:attack])
        format.html { redirect_to @attack, notice: 'Attack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attacks/1
  # DELETE /attacks/1.json
  def destroy
    @attack = Attack.find(params[:id])
    @attack.destroy

    respond_to do |format|
      format.html { redirect_to attacks_url }
      format.json { head :no_content }
    end
  end
end
