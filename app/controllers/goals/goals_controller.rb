class Goals::GoalsController < ApplicationController
  before_action :set_goals_goal, only: [:show, :edit, :update, :destroy]

  # GET /goals/goals
  # GET /goals/goals.json
  def index
    @goals_goals = Goals::Goal.all
  end

  # GET /goals/goals/1
  # GET /goals/goals/1.json
  def show
  end

  # GET /goals/goals/new
  def new
    @goals_goal = Goals::Goal.new
  end

  # GET /goals/goals/1/edit
  def edit
  end

  # POST /goals/goals
  # POST /goals/goals.json
  def create
    @goals_goal = Goals::Goal.new(goals_goal_params)

    respond_to do |format|
      if @goals_goal.save
        format.html { redirect_to @goals_goal, notice: 'Goal was successfully created.' }
        format.json { render :show, status: :created, location: @goals_goal }
      else
        format.html { render :new }
        format.json { render json: @goals_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/goals/1
  # PATCH/PUT /goals/goals/1.json
  def update
    respond_to do |format|
      if @goals_goal.update(goals_goal_params)
        format.html { redirect_to @goals_goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goals_goal }
      else
        format.html { render :edit }
        format.json { render json: @goals_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/goals/1
  # DELETE /goals/goals/1.json
  def destroy
    @goals_goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goals_goal
      @goals_goal = Goals::Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goals_goal_params
      params.fetch(:goals_goal, {})
    end
end
