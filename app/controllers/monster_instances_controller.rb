class MonsterInstancesController < ApplicationController
  # GET /monster_instances
  # GET /monster_instances.json
  def index
    @monster_instances = MonsterInstance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monster_instances }
    end
  end

  # GET /monster_instances/1
  # GET /monster_instances/1.json
  def show
    @monster_instance = MonsterInstance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monster_instance }
    end
  end

  # GET /monster_instances/new
  # GET /monster_instances/new.json
  def new
    @monster_instance = MonsterInstance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monster_instance }
    end
  end

  # GET /monster_instances/1/edit
  def edit
    @monster_instance = MonsterInstance.find(params[:id])
  end

  # POST /monster_instances
  # POST /monster_instances.json
  def create
    @monster_instance = MonsterInstance.new(params[:monster_instance])

    respond_to do |format|
      if @monster_instance.save
        format.html { redirect_to @monster_instance, notice: 'Monster instance was successfully created.' }
        format.json { render json: @monster_instance, status: :created, location: @monster_instance }
      else
        format.html { render action: "new" }
        format.json { render json: @monster_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monster_instances/1
  # PUT /monster_instances/1.json
  def update
    @monster_instance = MonsterInstance.find(params[:id])

    respond_to do |format|
      if @monster_instance.update_attributes(params[:monster_instance])
        format.html { redirect_to @monster_instance, notice: 'Monster instance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monster_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monster_instances/1
  # DELETE /monster_instances/1.json
  def destroy
    @monster_instance = MonsterInstance.find(params[:id])
    @monster_instance.destroy

    respond_to do |format|
      format.html { redirect_to monster_instances_url }
      format.json { head :no_content }
    end
  end
end
