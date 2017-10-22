# frozen_string_literal: true

class TablesActivitiesController < ApplicationController
  before_action :set_tables_activity, only: %i[show update destroy]

  # GET /tables_activities
  def index
    @tables_activities = TablesActivity.all

    render json: @tables_activities
  end

  # GET /tables_activities/1
  def show
    render json: @tables_activity
  end

  # GET all activity for one table
  def show_table_activity
    # finds all activity of one table based on table_id
    @table_activity = TablesActivity.where(table_id: params[:table_number])
    # sort by latest time sat
    # Can't sort by time up in case some are null
    @table_activity.sort { |b,a| a.time_sat <=> b.time_sat }

    render json: @table_activity
  end

  # GET all available tables
  def index_available
    # time_sat is expected when the entry is created, so its presence is implied
    @all_available_tables = TablesActivity.where.not(time_up: nil)
    # binding.pry
    # @filtered_tables = @all_available_tables.select(:id, :table_id, :time_sat, :time_up, :party_id).distinct
    @table_ids = @all_available_tables.map { |t_hash| t_hash[:table_id] }
    @table_ids.uniq!

    # sort by latest time up
    @all_available_tables.sort { |b,a| a.time_up <=> b.time_up }
    @tables = []
    for id in @table_ids
      for t_hash in @all_available_tables
        if ((id == t_hash[:table_id]) && (@tables.length < @table_ids.length))
          @tables << t_hash
        end
      end
    end


    # TODO: limit the response to just the tables, not all table activity logs
    render json: @tables
  end

  # GET all occupied tables, sorted by earliest time sat
  def index_occupied
    # tables created will have at least a time_sat
    # (time_up has to first exist to be nil)
    @all_occupied_tables = TablesActivity.where(time_up: nil)
    # # sorted earliest to latest
    @all_occupied_tables.sort { |a,b| a.time_sat <=> b.time_sat  }
    # TODO: limit the response to just the tables, not all table activity logs
    render json: @all_occupied_tables
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
    params.require(:tables_activity).permit(:table_id, :time_sat, :time_up, :party_id)
  end
end
