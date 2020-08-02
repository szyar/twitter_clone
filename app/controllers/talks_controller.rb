class TalksController < ApplicationController
  before_action :set_talk, only: [:show, :edit, :update, :destroy]

  def index
    @talks = Talk.all
  end

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      redirect_to talks_path, notice: "Talk created!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @talk.update(talk_params)
      redirect_to talks_path, notice: "You edited the talk!"
    else
      render :edit
    end
  end

  def destroy
    @talk.destroy
    redirect_to talks_path, notice: "You deleted a talk!"
  end

  private
  def talk_params
    params.require(:talk).permit(:talk)
  end

  def set_talk
    @talk = Talk.find(params[:id])
  end

end
