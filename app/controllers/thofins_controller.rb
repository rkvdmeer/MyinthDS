class ThofinsController < ApplicationController
  before_action :set_thofin, only: [:show, :edit, :update, :destroy]

  # GET /thofins
  # GET /thofins.json
  def index
    @thofins = Thofin.all
  end

  # GET /thofins/1
  # GET /thofins/1.json
  def show
  end

  # GET /thofins/new
  def new
    @thofin = Thofin.new
  end

  # GET /thofins/1/edit
  def edit
  end

  # POST /thofins
  # POST /thofins.json
  def create
    @thofin = Thofin.new(thofin_params)

    respond_to do |format|
      if @thofin.save
        format.html { redirect_to @thofin, notice: 'Thofin was successfully created.' }
        format.json { render :show, status: :created, location: @thofin }
      else
        format.html { render :new }
        format.json { render json: @thofin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thofins/1
  # PATCH/PUT /thofins/1.json
  def update
    respond_to do |format|
      if @thofin.update(thofin_params)
        format.html { redirect_to @thofin, notice: 'Thofin was successfully updated.' }
        format.json { render :show, status: :ok, location: @thofin }
      else
        format.html { render :edit }
        format.json { render json: @thofin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thofins/1
  # DELETE /thofins/1.json
  def destroy
    @thofin.destroy
    respond_to do |format|
      format.html { redirect_to thofins_url, notice: 'Thofin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thofin
      @thofin = Thofin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thofin_params
      params.require(:thofin).permit(:name, :description)
    end
end
