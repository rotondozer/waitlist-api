# frozen_string_literal: true

class TablesController < ApplicationController
  before_action :set_table, only: %i[show update destroy]

  # GET /tables
  def index
    @tables = Table.all

    render json: @tables
  end

  # GET /tables/:party_size/match
  def match_tables_to_party_size
    # sets the condition to between max and min table capacity
    condition = 'max_seat >= :party_size AND min_seat <= :party_size'
    # queries tables meeting the condition, passing party_size from params
    @matching_tables = Table.where(condition, party_size: params[:party_size])

    render json: @matching_tables
  end

  # GET /tables/1
  def show
    render json: @table
  end

  # POST /tables
  def create
    @table = Table.new(table_params)

    if @table.save
      render json: @table, status: :created, location: @table
    else
      render json: @table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tables/1
  def update
    if @table.update(table_params)
      render json: @table
    else
      render json: @table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tables/1
  def destroy
    @table.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_table
    @table = Table.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def table_params
    params.require(:table).permit(:max_seat, :min_seat, :user_id)
  end
end
