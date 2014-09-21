class MatchupsController < ApplicationController
  # GET /matchups
  # GET /matchups.json
  def index
    @matchups = Matchup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @matchups }
    end
  end

  # GET /matchups/1
  # GET /matchups/1.json
  def show
    @matchup = Matchup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @matchup }
    end
  end

  # GET /matchups/new
  # GET /matchups/new.json
  def new
    @matchup = Matchup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @matchup }
    end
  end

  # GET /matchups/1/edit
  def edit
    @matchup = Matchup.find(params[:id])
  end

  # POST /matchups
  # POST /matchups.json
  def create
    @matchup = Matchup.new(params[:matchup])

    respond_to do |format|
      if @matchup.save
        format.html { redirect_to @matchup, notice: 'Matchup was successfully created.' }
        format.json { render json: @matchup, status: :created, location: @matchup }
      else
        format.html { render action: "new" }
        format.json { render json: @matchup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /matchups/1
  # PUT /matchups/1.json
  def update
    @matchup = Matchup.find(params[:id])

    respond_to do |format|
      if @matchup.update_attributes(params[:matchup])
        format.html { redirect_to @matchup, notice: 'Matchup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @matchup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matchups/1
  # DELETE /matchups/1.json
  def destroy
    @matchup = Matchup.find(params[:id])
    @matchup.destroy

    respond_to do |format|
      format.html { redirect_to matchups_url }
      format.json { head :no_content }
    end
  end
end
