class JotsController < ApplicationController
  before_action :set_jot, only: [:show, :edit, :update, :destroy]

  # GET /jots
  # GET /jots.json
  def homepage
  end

  def landing
    redirect_to 'jots/landing'
  end

  def index
    if params[:tag]
      @jots = Jot.tagged_with(params[:tag])
    else
      @jots = Jot.all
    end
  end

  # GET /jots/1
  # GET /jots/1.json
  def show
  end

  # GET /jots/new
  def new
    @jot = Jot.new
  end

  # GET /jots/1/edit
  def edit
  end

  # POST /jots
  # POST /jots.json
  def create
    @jot = Jot.new(jot_params)

    respond_to do |format|
      if @jot.save
        format.html { redirect_to @jot, notice: 'Jot was successfully created.' }
        format.json { render :show, status: :created, location: @jot }
      else
        format.html { render :new }
        format.json { render json: @jot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jots/1
  # PATCH/PUT /jots/1.json
  def update
    respond_to do |format|
      if @jot.update(jot_params)
        format.html { redirect_to @jot, notice: 'Jot was successfully updated.' }
        format.json { render :show, status: :ok, location: @jot }
      else
        format.html { render :edit }
        format.json { render json: @jot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jots/1
  # DELETE /jots/1.json
  def destroy
    @jot.destroy
    respond_to do |format|
      format.html { redirect_to jots_url, notice: 'Jot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jot
      @jot = Jot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jot_params
      params.require(:jot).permit(:title, :body, :tag_list)
    end
end
