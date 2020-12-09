class CordsController < ApplicationController
  before_action :set_cord, only: [:show, :edit, :update, :destroy]
  before_action :set_racquet, only: [:new, :create]
  # before_action :authenticate_user!
  # GET /cords
  # GET /cords.json
  def index
    @cords = Cord.all
    @cords = Cord.user_cords(current_user)
  end

  # GET /cords/1
  # GET /cords/1.json
  def show
  end

  # GET /cords/new
  def new
    @cord=@racquet.cords.new
  end

  # GET /cords/1/edit
  def edit
  end

  # POST /cords
  # POST /cords.json
  def create
    # @cord = Cord.new(cord_params)
    @cord = @racquet.cords.new(cord_params)
    @cord.user = current_user
    respond_to do |format|
      if @cord.save
        format.html { redirect_to @cord, notice: 'Cord was successfully created.' }
        format.json { render :show, status: :created, location: @cord }
      else
        format.html { render :new }
        format.json { render json: @cord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cords/1
  # PATCH/PUT /cords/1.json
  def update
    respond_to do |format|
      if @cord.update(cord_params)
        format.html { redirect_to @cord, notice: 'Cord was successfully updated.' }
        format.json { render :show, status: :ok, location: @cord }
      else
        format.html { render :edit }
        format.json { render json: @cord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cords/1
  # DELETE /cords/1.json
  def destroy
    @cord.destroy
    respond_to do |format|
      format.html { redirect_to cords_url, notice: 'Cord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_racquet
      @racquet = Racquet.find_by(id: params[:racquet_id]) || Racquet.find(cord_params[:racquet_id])
    end
      # Use callbacks to share common setup or constraints between actions.
    def set_cord
      @cord = Cord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cord_params
      params.require(:cord).permit(:racquet_id, :name, :colour)
    end
end
