class MessagesController < ApplicationController
  def index
    redirect_to(users_path)
  end

  def create
   @newmsg = Message.new(message_params)
    if @newmsg.save
    redirect_to(users_path)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private def message_params
    params.require(:message).permit(:message, :user_id)
  end
end
