class DesingersController < ApplicationController
  before_action :set_desinger, only: %i[ show edit update destroy ]

  # GET /desingers or /desingers.json
  def index
    @desingers = Desinger.all
  end

  # GET /desingers/1 or /desingers/1.json
  def show
  end

  # GET /desingers/new
  def new
    @desinger = Desinger.new
  end

  # GET /desingers/1/edit
  def edit
  end

  # POST /desingers or /desingers.json
  def create
    @desinger = Desinger.new(desinger_params)

    respond_to do |format|
      if @desinger.save
        format.html { redirect_to desinger_url(@desinger), notice: "Desinger was successfully created." }
        format.json { render :show, status: :created, location: @desinger }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desinger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desingers/1 or /desingers/1.json
  def update
    respond_to do |format|
      if @desinger.update(desinger_params)
        format.html { redirect_to desinger_url(@desinger), notice: "Desinger was successfully updated." }
        format.json { render :show, status: :ok, location: @desinger }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desinger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desingers/1 or /desingers/1.json
  def destroy
    @desinger.destroy

    respond_to do |format|
      format.html { redirect_to desingers_url, notice: "Desinger was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desinger
      @desinger = Desinger.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desinger_params
      params.require(:desinger).permit(:name, :email, :passwort)
    end
end
