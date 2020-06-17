class QuestsController < ApplicationController

  def index
    quests = Quest.all
    render json: quests
  end

  def show
    quest = Quest.find(params[:id])
    render json: quest
  end

  def new
    newQuest = Quest.new
  end
 
  def create
    location_id = Location.find_by(name: quest_params[:location_name]).id
    newQuest = Quest.create(content:quest_params[:content], location_id:location_id)
    render json: newQuest
  end

  def destroy
    quest = Quest.find(quest_params[:id])
    render json: quest
    quest.destroy
  end

  private

  def quest_params
    params.require(:quest).permit(:content, :location_name, :id)
  end

end

