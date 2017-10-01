class WaitingPartiesController < ApplicationController
  before_action :set_waiting_party, only: [:show, :update, :destroy]

  # GET /waiting_parties
  def index
    @waiting_parties = WaitingParty.all

    render json: @waiting_parties
  end

  # GET /waiting_parties/1
  def show
    render json: @waiting_party
  end

  # POST /waiting_parties
  def create
    @waiting_party = WaitingParty.new(waiting_party_params)

    if @waiting_party.save
      render json: @waiting_party, status: :created, location: @waiting_party
    else
      render json: @waiting_party.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /waiting_parties/1
  def update
    if @waiting_party.update(waiting_party_params)
      render json: @waiting_party
    else
      render json: @waiting_party.errors, status: :unprocessable_entity
    end
  end

  # DELETE /waiting_parties/1
  def destroy
    @waiting_party.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waiting_party
      @waiting_party = WaitingParty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def waiting_party_params
      params.require(:waiting_party).permit(:name, :size, :checked_in, :est_wait, :notes)
    end
end
