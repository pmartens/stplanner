class PoulesController < ApplicationController
  # GET /poules
  # GET /poules.json
  def index
    @poules = Poule.all( :joins => [:team_group, :poule_name] )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poules }
    end
  end

  # GET /poules/1
  # GET /poules/1.json
  def show
    @poule = Poule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poule }
    end
  end

  # GET /poules/new
  # GET /poules/new.json
  def new
    @poule = Poule.new
    @teamgroups = TeamGroup.all
    @poulenames = PouleName.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poule }
    end
  end

  # GET /poules/1/edit
  def edit
    @poule = Poule.find(params[:id])
  end

  # POST /poules
  # POST /poules.json
  def create
    @poule = Poule.new(params[:poule])

    respond_to do |format|
      if @poule.save
        format.html { redirect_to @poule, notice: 'Poule was successfully created.' }
        format.json { render json: @poule, status: :created, location: @poule }
      else
        format.html { render action: "new" }
        format.json { render json: @poule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poules/1
  # PUT /poules/1.json
  def update
    @poule = Poule.find(params[:id])

    respond_to do |format|
      if @poule.update_attributes(params[:poule])
        format.html { redirect_to @poule, notice: 'Poule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poules/1
  # DELETE /poules/1.json
  def destroy
    @poule = Poule.find(params[:id])
    @poule.destroy

    respond_to do |format|
      format.html { redirect_to poules_url }
      format.json { head :no_content }
    end
  end
end
