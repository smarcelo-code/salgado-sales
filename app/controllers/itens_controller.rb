class ItensController < ApplicationController
  before_action :set_iten, only: %i[ show edit update destroy ]

  # GET /itens or /itens.json
  def index
    @itens = Iten.all
  end

  # GET /itens/1 or /itens/1.json
  def show
  end

  # GET /itens/new
  def new
    @iten = Iten.new
  end

  # GET /itens/1/edit
  def edit
  end

  # POST /itens or /itens.json
  def create
    @iten = Iten.new(iten_params)

    respond_to do |format|
      if @iten.save
        format.html { redirect_to iten_url(@iten), notice: "Iten was successfully created." }
        format.json { render :show, status: :created, location: @iten }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @iten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itens/1 or /itens/1.json
  def update
    respond_to do |format|
      if @iten.update(iten_params)
        format.html { redirect_to iten_url(@iten), notice: "Iten was successfully updated." }
        format.json { render :show, status: :ok, location: @iten }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @iten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itens/1 or /itens/1.json
  def destroy
    @iten.destroy

    respond_to do |format|
      format.html { redirect_to itens_url, notice: "Iten was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iten
      @iten = Iten.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def iten_params
      params.require(:iten).permit(:name, :category, :quantity, :description)
    end
end
