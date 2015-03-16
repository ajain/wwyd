class WhiesController < ApplicationController
  before_action :set_why, only: [:show, :edit, :update, :destroy]

  # GET /whies
  # GET /whies.json
  def index
    @whies = Why.all
  end

  # GET /whies/1
  # GET /whies/1.json
  def show
  end

  # GET /whies/new
  def new
    @why = Why.new
  end

  # GET /whies/1/edit
  def edit
  end

  # POST /whies
  # POST /whies.json
  def create
    @why = Why.new(why_params)

    respond_to do |format|
      if @why.save
        format.html { redirect_to @why, notice: 'Why was successfully created.' }
        format.json { render :show, status: :created, location: @why }
      else
        format.html { render :new }
        format.json { render json: @why.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whies/1
  # PATCH/PUT /whies/1.json
  def update
    respond_to do |format|
      if @why.update(why_params)
        format.html { redirect_to @why, notice: 'Why was successfully updated.' }
        format.json { render :show, status: :ok, location: @why }
      else
        format.html { render :edit }
        format.json { render json: @why.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whies/1
  # DELETE /whies/1.json
  def destroy
    @why.destroy
    respond_to do |format|
      format.html { redirect_to whies_url, notice: 'Why was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_why
      @why = Why.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def why_params
      params.require(:why).permit(:title, :content)
    end
end
