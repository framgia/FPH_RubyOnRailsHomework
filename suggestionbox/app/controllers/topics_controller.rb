class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @user = Topic.new
  end

  def create
    @topic = Topic.new(params.require(:topic).permit(:title, :description))
    @topic.save
    redirect_to topics_path
  end

  def edit
  end
end
