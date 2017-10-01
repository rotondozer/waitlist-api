class TablesActivitiesController < ApplicationController
  before_action :set_tables_activity, only: [:show, :update, :destroy]

  # GET /tables_activities
  def index
    @tables_activities = TablesActivity.all

    render json: @tables_activities
  end

  # GET /tables_activities/1
  def show
    render json: @tables_activity
  end

  # POST /tables_activities
  def create
    @tables_activity = TablesActivity.new(tables_activity_params)

    if @tables_activity.save
      render json: @tables_activity, status: :created, location: @tables_activity
    else
      render json: @tables_activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tables_activities/1
  def update
    if @tables_activity.update(tables_activity_params)
      render json: @tables_activity
    else
      render json: @tables_activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tables_activities/1
  def destroy
    @tables_activity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tables_activity
      @tables_activity = TablesActivity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tables_activity_params
      params.require(:tables_activity).permit(:table_id, :time_sat, :time_up)
    end
end