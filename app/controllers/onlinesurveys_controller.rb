class OnlinesurveysController < ApplicationController
  before_action :set_onlinesurvey, only: %i[ show edit update destroy ]

  # GET /onlinesurveys or /onlinesurveys.json
  def index
    @onlinesurveys = Onlinesurvey.all
  end

  # GET /onlinesurveys/1 or /onlinesurveys/1.json
  def show
  end

  # GET /onlinesurveys/new
  def new
    @onlinesurvey = Onlinesurvey.new
  end

  # GET /onlinesurveys/1/edit
  def edit
  end

  # POST /onlinesurveys or /onlinesurveys.json
  def create
    @onlinesurvey = Onlinesurvey.new(onlinesurvey_params)

    respond_to do |format|
      if @onlinesurvey.save
        format.html { redirect_to @onlinesurvey, notice: "Onlinesurvey was successfully created." }
        format.json { render :show, status: :created, location: @onlinesurvey }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @onlinesurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onlinesurveys/1 or /onlinesurveys/1.json
  def update
    respond_to do |format|
      if @onlinesurvey.update(onlinesurvey_params)
        format.html { redirect_to @onlinesurvey, notice: "Onlinesurvey was successfully updated." }
        format.json { render :show, status: :ok, location: @onlinesurvey }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @onlinesurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onlinesurveys/1 or /onlinesurveys/1.json
  def destroy
    @onlinesurvey.destroy
    respond_to do |format|
      format.html { redirect_to onlinesurveys_url, notice: "Onlinesurvey was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onlinesurvey
      @onlinesurvey = Onlinesurvey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def onlinesurvey_params
      params.require(:onlinesurvey).permit(:name, :laptop, :manufacturer)
    end
end
