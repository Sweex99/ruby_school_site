# frozen_string_literal: true

# good
class JoinsController < ApplicationController
  before_action :set_join, only: %i[show edit update destroy]
  before_action :must_be_admin, only: [:index]

  def add_student
    @join = Join.find(params[:id])
    UserRole.create(role: 'Student', class_room: @join.class_room, user_id: @join.user_id) if UserRole.where(user_id: @join.user_id).empty?
    @join.destroy
  end

  # GET /joins
  # GET /joins.json
  def index
    @joins = Join.all
  end

  # GET /joins/1
  # GET /joins/1.json
  def show; end

  # GET /joins/new
  def new
    @join = Join.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @join }
    end
  end

  # GET /joins/1/edit
  def edit; end

  # POST /joins
  # POST /joins.json
  def create
    @join = Join.new(class_room: join_params[:class_room], user_id: current_user.id)

    respond_to do |format|
      if @join.save
        format.html { redirect_to @join }
        format.json { render :show, status: :created, location: @join }
      else
        format.html { render :new }
        format.json { render json: @join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joins/1
  # PATCH/PUT /joins/1.json
  def update
    respond_to do |format|
      if @join.update(join_params)
        format.html { redirect_to @join }
        format.json { render :show, status: :ok, location: @join }
      else
        format.html { render :edit }
        format.json { render json: @join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joins/1
  # DELETE /joins/1.json
  def destroy
    @join.destroy
    respond_to do |format|
      format.html { redirect_to joins_url, notice: 'Користувач не прийнятий.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_join
    @join = Join.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def join_params
    params.require(:join).permit(:class_room)
  end
end
