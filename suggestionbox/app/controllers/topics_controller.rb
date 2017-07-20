class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @user = Topic.new
  end

  def create
    @topic = Topic.new(params.require(:topic).permit(:title, :description))
    @topic.save
    redirect_to @topic
  end

  def edit
  end
end
