class JunctionsController < ApplicationController
  # GET /junctions
  # GET /junctions.json
  def index
    @junctions = Junction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @junctions }
    end
  end

  # GET /junctions/1
  # GET /junctions/1.json
  def show
    @junction = Junction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @junction }
    end
  end

  # GET /junctions/new
  # GET /junctions/new.json
  def new
    @junction = Junction.new(floor_id: params[:floor_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @junction }
    end
  end

  # GET /junctions/1/edit
  def edit
    @junction = Junction.find(params[:id])
  end

  # POST /junctions
  # POST /junctions.json
  def create
    @junction = Junction.new(params[:junction])

    respond_to do |format|
      if @junction.save
        format.html { redirect_to @junction, notice: 'Junction was successfully created.' }
        format.json { render json: @junction, status: :created, location: @junction }
      else
        format.html { render action: "new" }
        format.json { render json: @junction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /junctions/1
  # PUT /junctions/1.json
  def update
    @junction = Junction.find(params[:id])

    respond_to do |format|
      if @junction.update_attributes(params[:junction])
        format.html { redirect_to @junction, notice: 'Junction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @junction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /junctions/1
  # DELETE /junctions/1.json
  def destroy
    @junction = Junction.find(params[:id])
    @junction.destroy

    respond_to do |format|
      format.html { redirect_to junctions_url }
      format.json { head :no_content }
    end
  end
end
