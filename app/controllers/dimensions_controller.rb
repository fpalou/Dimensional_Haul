class DimensionsController < ApplicationController
  before_action :set_dimension, only: %i[show edit update destroy]

  # GET /dimensions
  def index
    @dimensions = Dimension.all
  end

  # GET /dimensions/:id
  def show
  end

  # GET /dimensions/new
  def new
    @dimension = Dimension.new
  end

  # GET /dimensions/:id/edit
  def edit
  end

  # POST /dimensions
  def create
    @dimension = Dimension.new(dimension_params)
    @dimension.users_id = current_user.id
    @dimension.categories_id = params[:dimension][:categories_id]

    if @dimension.save
      redirect_to @dimension, notice: 'Dimension was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dimensions/:id
  def update
    if @dimension.update(dimension_params)
      redirect_to @dimension, notice: 'Dimension was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dimensions/:id
  def destroy
    @dimension.destroy
    redirect_to dimensions_url, notice: 'Dimension was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dimension
    @dimension = Dimension.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dimension_params
    params.require(:dimension).permit(:title, :decription, :reviews, :categories_id, :users_id)
  end
end
