class PoctsController < ApplicationController
  before_action :set_poct, only: [:show, :edit, :update, :destroy]

  # GET /pocts
  # GET /pocts.json
  def index
    @pocts = Poct.all
  end

  # GET /pocts/1
  # GET /pocts/1.json
  def show
  end

  # GET /pocts/new
  def new
    @poct = Poct.new
  end

  # GET /pocts/1/edit
  def edit
  end

  # POST /pocts
  # POST /pocts.json
  def create
    @poct = Poct.new(poct_params)

    respond_to do |format|
      if @poct.save
        format.html { redirect_to @poct, notice: 'Poct was successfully created.' }
        format.json { render :show, status: :created, location: @poct }
      else
        format.html { render :new }
        format.json { render json: @poct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pocts/1
  # PATCH/PUT /pocts/1.json
  def update
    respond_to do |format|
      if @poct.update(poct_params)
        format.html { redirect_to @poct, notice: 'Poct was successfully updated.' }
        format.json { render :show, status: :ok, location: @poct }
      else
        format.html { render :edit }
        format.json { render json: @poct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pocts/1
  # DELETE /pocts/1.json
  def destroy
    @poct.destroy
    respond_to do |format|
      format.html { redirect_to pocts_url, notice: 'Poct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poct
      @poct = Poct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poct_params
      params.require(:poct).permit(:title, :body, :who)
    end
end
