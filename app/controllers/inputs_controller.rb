class InputsController < ApplicationController
  before_action :set_input, only: [:show]

  # GET /inputs/new
  def new
    @input = Input.new
  end

  # GET /inputs/1
  # GET /inputs/1.json
  def show
  end

  # POST /inputs
  # POST /inputs.json
  def create
    @input = Input.parse(input_params[:file])

    respond_to do |format|
      if @input
        format.html { redirect_to @input, notice: 'Input was successfully created.' }
        format.json { render :show, status: :created, location: @input }
      else
        format.html { render :new }
        format.json { render json: @input.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_input
      @input = Input.find(params[:id])
    end

    def input_params
      params.require(:input).permit(:file)
    end
end
