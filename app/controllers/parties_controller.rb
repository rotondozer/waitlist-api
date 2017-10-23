class PartiesController < ProtectedController
  before_action :set_party, only: [:show, :update, :destroy]
  before_action :set_user

  # GET /:user_id/parties
  def index

    @parties = Party.all.where(user_id: @user)
    # @parties = Party.all.where(user_id: params[:user_id])

    @parties_waiting = []
    for party in @parties
      if party.tables_activity.nil?
        @parties_waiting << party
      end
    end

    render json: @parties_waiting
  end

  # GET /parties/1
  def show
    render json: @party
  end

  # POST /parties
  def create
    @party = Party.new(party_params)

    if @party.save
      render json: @party, status: :created, location: @party
    else
      render json: @party.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parties/1
  def update
    if @party.update(party_params)
      render json: @party
    else
      render json: @party.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parties/1
  def destroy
    @party.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party
      @party = Party.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def party_params
      params.require(:party).permit(:name, :size, :est_wait, :notes, :user_id, :checked_in)
    end
end
