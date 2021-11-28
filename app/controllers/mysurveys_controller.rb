class MysurveysController < ApplicationController
  before_action :set_mysurvey, only: %i[ show edit update destroy ]

  # GET /mysurveys or /mysurveys.json
  def index
    @mysurveys = Mysurvey.all
  end

  # GET /mysurveys/1 or /mysurveys/1.json
  def show
  end

  # GET /mysurveys/new
  def new
    @mysurvey = Mysurvey.new
  end

  # GET /mysurveys/1/edit
  def edit
  end

  # POST /mysurveys or /mysurveys.json
  def create
    @mysurvey = Mysurvey.new(mysurvey_params)

    respond_to do |format|
      if @mysurvey.save
        format.html { redirect_to @mysurvey, notice: "Mysurvey was successfully created." }
        format.json { render :show, status: :created, location: @mysurvey }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mysurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mysurveys/1 or /mysurveys/1.json
  def update
    respond_to do |format|
      if @mysurvey.update(mysurvey_params)
        format.html { redirect_to @mysurvey, notice: "Mysurvey was successfully updated." }
        format.json { render :show, status: :ok, location: @mysurvey }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mysurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mysurveys/1 or /mysurveys/1.json
  def destroy
    @mysurvey.destroy
    respond_to do |format|
      format.html { redirect_to mysurveys_url, notice: "Mysurvey was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mysurvey
      @mysurvey = Mysurvey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mysurvey_params
      params.require(:mysurvey).permit(:name, :laptop, :type)
    end
end
