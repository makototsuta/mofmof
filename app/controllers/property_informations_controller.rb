class PropertyInformationsController < ApplicationController
  before_action :set_property_information, only: [:show, :edit, :update, :destroy]

  def index
    @property_informations = PropertyInformation.all
  end

  def show
  end

  def new
    @property_information = PropertyInformation.new
    @property_information.add_stations.build
  end

  def edit
  end

  def create
    @property_information = PropertyInformation.new(property_information_params)

    respond_to do |format|
      if @property_information.save
        format.html { redirect_to @property_information, notice: 'PropertyInformation was successfully created.' }
        format.json { render :show, status: :created, location: @property_information }
      else
        format.html { render :new }
        format.json { render json: @property_information.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property_information.update(property_information_params)
        format.html { redirect_to @property_information, notice: 'PropertyInformation was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_information }
      else
        format.html { render :edit }
        format.json { render json: @property_information.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property_information.destroy
    respond_to do |format|
      format.html { redirect_to property_informations_url, notice: 'PropertyInformation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_property_information
      @property_information = PropertyInformation.find(params[:id])
    end

    def property_information_params
      params.require(:property_information).permit(:property, :rent, :address, :year, :note, add_stations_attributes: [:id, :route, :station, :minutes])
    end
end
