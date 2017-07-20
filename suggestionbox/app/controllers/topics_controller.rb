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
    @topic = Topic.new(topic_params)
    @topic.save
    redirect_to topics_path
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])

    if @topic.update(topic_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
      @topic = Topic.find(params[:id])
      @topic.destroy
      redirect_to topics_path
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :description)
    end
end
