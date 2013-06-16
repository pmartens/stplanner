class TeamGroupsController < ApplicationController
  # GET /team_groups
  # GET /team_groups.json
  def index
    @team_groups = TeamGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_groups }
    end
  end

  # GET /team_groups/1
  # GET /team_groups/1.json
  def show
    @team_group = TeamGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_group }
    end
  end

  # GET /team_groups/new
  # GET /team_groups/new.json
  def new
    @team_group = TeamGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_group }
    end
  end

  # GET /team_groups/1/edit
  def edit
    @team_group = TeamGroup.find(params[:id])
  end

  # POST /team_groups
  # POST /team_groups.json
  def create
    @team_group = TeamGroup.new(params[:team_group])

    respond_to do |format|
      if @team_group.save
        format.html { redirect_to @team_group, notice: 'Team group was successfully created.' }
        format.json { render json: @team_group, status: :created, location: @team_group }
      else
        format.html { render action: "new" }
        format.json { render json: @team_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_groups/1
  # PUT /team_groups/1.json
  def update
    @team_group = TeamGroup.find(params[:id])

    respond_to do |format|
      if @team_group.update_attributes(params[:team_group])
        format.html { redirect_to @team_group, notice: 'Team group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_groups/1
  # DELETE /team_groups/1.json
  def destroy
    @team_group = TeamGroup.find(params[:id])
    @team_group.destroy

    respond_to do |format|
      format.html { redirect_to team_groups_url }
      format.json { head :no_content }
    end
  end
end
