class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy]

  def index
    @message = Message.new

    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
        redirect_to root_path, notice: 'メッセージを保存しました'
    else
        @messages = Message.all
        flash.now[:alert] = 'メッセージの保存に失敗しました'
        render 'index'
    end
  end

  def edit
      
  end

  def update
    if @message.update(message_params)
        # 保存に成功した場合はトップページへリダイレクト
        redirect_to root_path , notice: 'メッセージを編集しました'
    else
        # 保存に失敗した場合は編集画面へ戻す
        render 'edit'
    end
  end

  def destroy
    # 削除機能
    @message.destroy
    redirect_to root_path , notice: 'メッセージを削除しました'
  end

  private
    def message_params
        params.require(:message).permit(:name, :body)
    end

    def set_message
       @message = Message.find(params[:id])
    end
end
