class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      # send message
      flash[:notice] = "Message Sent! Thank you for contacting me."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
