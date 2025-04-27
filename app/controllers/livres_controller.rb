class LivresController < ApplicationController
  before_action :set_livre, only: %i[ show edit update destroy ]

  # GET /livres or /livres.json
  def index
    @livres = Livre.all
  end

  # GET /livres/1 or /livres/1.json
  def show
  end

  # GET /livres/new
  def new
    @livre = Livre.new
  end

  # GET /livres/1/edit
  def edit
  end

  # POST /livres or /livres.json
  def create
    @livre = Livre.new(livre_params)

    respond_to do |format|
      if @livre.save
        format.html { redirect_to @livre, notice: "Livre was successfully created." }
        format.json { render :show, status: :created, location: @livre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @livre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /livres/1 or /livres/1.json
  def update
    respond_to do |format|
      if @livre.update(livre_params)
        format.html { redirect_to @livre, notice: "Livre was successfully updated." }
        format.json { render :show, status: :ok, location: @livre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @livre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livres/1 or /livres/1.json
  def destroy
    @livre.destroy!

    respond_to do |format|
      format.html { redirect_to livres_path, status: :see_other, notice: "Livre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_livre
      @livre = Livre.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def livre_params
      params.expect(livre: [ :titre, :auteur, :resume, :date ])
    end
end
