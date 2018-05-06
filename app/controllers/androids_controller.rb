class AndroidsController < ApplicationController
    before_action :set_android, only: [:show, :edit, :update, :destroy, :sold_one]

  # GET /androids
  # GET /androids.json
  def index
    @androids = Android.all
  end

  # GET /androids/1
  # GET /androids/1.json
  def show
  end

  # GET /androids/new
  def new
    @android = Android.new
  end

  # GET /androids/1/edit
  def edit
  end

  # POST /androids
  # POST /androids.json
  def create
    @android = Android.new(android_params)

    respond_to do |format|
      if @android.save
        format.html { redirect_to @android, notice: 'Android was successfully created.' }
        format.json { render :show, status: :created, location: @android }
      else
        format.html { render :new }
        format.json { render json: @android.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /androids/1
  # PATCH/PUT /androids/1.json
  def update
    respond_to do |format|
      if @android.update(android_params)
        format.html { redirect_to @android, notice: 'Android was successfully updated.' }
        format.json { render :show, status: :ok, location: @android }
      else
        format.html { render :edit }
        format.json { render json: @android.errors, status: :unprocessable_entity }
      end
    end
  end

    def sold_one
        @android = Android.find(params[:id])
        @android.num_of_stock = @android.num_of_stock-1
        @android.save
        redirect_to "/androids/"
    end

  # DELETE /androids/1
  # DELETE /androids/1.json
  def destroy
    @android.destroy
    respond_to do |format|
      format.html { redirect_to androids_url, notice: 'Android was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_android
      @android = Android.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def android_params
      params.require(:android).permit(:name, :brand, :year_released, :camera, :mpixels, :internal_storage, :num_of_sim_slots, :screensize, :operating_system, :num_of_stock)
    end
end
