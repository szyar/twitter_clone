class TalksController < ApplicationController
  def index
    @talks = Talk.all
  end

  def new
    @talk = Talk.new
  end

  def create
    Talk.create(talk_params)
    redirect_to new_talk_path
  end

  private
  def talk_params
    params.require(:talk).permit(:talk)
  end

end
