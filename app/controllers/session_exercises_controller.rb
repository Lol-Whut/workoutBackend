class SessionExercisesController < ApplicationController
  before_action :set_session_exercise, only: [:show, :update, :destroy]

  # GET /session_exercises
  def index
    @session_exercises = SessionExercise.all

    render json: @session_exercises
  end

  # GET /session_exercises/1
  def show
    render json: @session_exercise
  end

  # POST /session_exercises
  def create
    @session_exercise = SessionExercise.new(session_exercise_params)

    if @session_exercise.save
      render json: @session_exercise, status: :created, location: @session_exercise
    else
      render json: @session_exercise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /session_exercises/1
  def update
    if @session_exercise.update(session_exercise_params)
      render json: @session_exercise
    else
      render json: @session_exercise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /session_exercises/1
  def destroy
    @session_exercise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_exercise
      @session_exercise = SessionExercise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def session_exercise_params
      params.require(:session_exercise).permit(:session_id, :exercise_id, :reps, :stopped_at)
    end
end
