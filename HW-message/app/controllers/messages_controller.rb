class MessagesController < ApplicationController
  def index
    @message = Message.new

    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
        flash[:success] = 'メッセージを保存しました'
        # redirect_to root_path, notice: 'メッセージを保存しました'
        redirect_to root_path
    else
        @messages = Message.all
        flash.now[:alert] = 'メッセージの保存に失敗しました'
        render 'index'
    end
  end

  private
    def message_params
        params.require(:message).permit(:name, :body)
    end
end
