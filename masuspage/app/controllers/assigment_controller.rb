class AssigmentsController < ApplicationController
  before_action :set_assigment, only: [:show, :edit, :update, :destroy]

  # GET /assigments
  def index
    @assigments = Assigment.all
  end

  # GET /assigments/1
  def show
  end

  # GET /assigments/new
  def new
    @assigment = Assigment.new
  end

  # GET /assigments/1/edit
  def edit
  end

  # POST /assigments
  def create
    @assigment = Assigment.new(assigment_params)

    if @assigment.save
      redirect_to @assigment, notice: 'assigment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /assigments/1
  def update
    if @assigment.update(assigment_params)
      redirect_to @assigment, notice: 'assigment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /assigments/1
  def destroy
    @assigment.destroy
    redirect_to assigments_url, notice: 'assigment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigment
      @assigment = Assigment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assigment_params
      params.require(:assigment).permit(:name)
    end
end
