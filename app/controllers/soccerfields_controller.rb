class SoccerfieldsController < ApplicationController
  # GET /soccerfields
  # GET /soccerfields.json
  def index
    @soccerfields = Soccerfield.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @soccerfields }
    end
  end

  # GET /soccerfields/1
  # GET /soccerfields/1.json
  def show
    @soccerfield = Soccerfield.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @soccerfield }
    end
  end

  # GET /soccerfields/new
  # GET /soccerfields/new.json
  def new
    @soccerfield = Soccerfield.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @soccerfield }
    end
  end

  # GET /soccerfields/1/edit
  def edit
    @soccerfield = Soccerfield.find(params[:id])
  end

  # POST /soccerfields
  # POST /soccerfields.json
  def create
    @soccerfield = Soccerfield.new(params[:soccerfield])

    respond_to do |format|
      if @soccerfield.save
        format.html { redirect_to @soccerfield, notice: 'Soccerfield was successfully created.' }
        format.json { render json: @soccerfield, status: :created, location: @soccerfield }
      else
        format.html { render action: "new" }
        format.json { render json: @soccerfield.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /soccerfields/1
  # PUT /soccerfields/1.json
  def update
    @soccerfield = Soccerfield.find(params[:id])

    respond_to do |format|
      if @soccerfield.update_attributes(params[:soccerfield])
        format.html { redirect_to @soccerfield, notice: 'Soccerfield was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @soccerfield.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soccerfields/1
  # DELETE /soccerfields/1.json
  def destroy
    @soccerfield = Soccerfield.find(params[:id])
    @soccerfield.destroy

    respond_to do |format|
      format.html { redirect_to soccerfields_url }
      format.json { head :no_content }
    end
  end
end
