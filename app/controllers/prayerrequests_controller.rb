class PrayerrequestsController < ApplicationController
  before_action :set_prayerrequest, only: [:show, :edit, :update, :destroy]

  # GET /prayerrequests
  # GET /prayerrequests.json
  def index
    @prayerrequests = Prayerrequest.all
  end

  # GET /prayerrequests/1
  # GET /prayerrequests/1.json
  def show
  end

  # GET /prayerrequests/new
  def new
    @prayerrequest = Prayerrequest.new
  end

  # GET /prayerrequests/1/edit
  def edit
  end

  # POST /prayerrequests
  # POST /prayerrequests.json
  def create
    @prayerrequest = Prayerrequest.new(prayerrequest_params)

    respond_to do |format|
      if @prayerrequest.save
        format.html { redirect_to @prayerrequest, notice: 'Prayerrequest was successfully created.' }
        format.json { render :show, status: :created, location: @prayerrequest }
      else
        format.html { render :new }
        format.json { render json: @prayerrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prayerrequests/1
  # PATCH/PUT /prayerrequests/1.json
  def update
    respond_to do |format|
      if @prayerrequest.update(prayerrequest_params)
        format.html { redirect_to @prayerrequest, notice: 'Prayerrequest was successfully updated.' }
        format.json { render :show, status: :ok, location: @prayerrequest }
      else
        format.html { render :edit }
        format.json { render json: @prayerrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayerrequests/1
  # DELETE /prayerrequests/1.json
  def destroy
    @prayerrequest.destroy
    respond_to do |format|
      format.html { redirect_to prayerrequests_url, notice: 'Prayerrequest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prayerrequest
      @prayerrequest = Prayerrequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prayerrequest_params
      params.require(:prayerrequest).permit(:title, :description)
    end
end
