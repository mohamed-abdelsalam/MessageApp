class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    current_client_name = session[:current_client_name]
    if (current_client_name == nil)
      redirect_to root_path
    else
      @message = Message.new(message_params)
      @message[:sender_name] = current_client_name
      @message[:send_time] = Time.now
      if (@message.save)
        render html: "Message Sent!"
      else
        render 'new'
      end
    end
  end

  def show
    current_client_name = session[:current_client_name]
    if (current_client_name == nil)
      redirect_to root_path
    else
      @message = Message.find_by id: params[:id]
      if (@message[:sender_name] != current_client_name &&
          @message[:receiver_name] != current_client_name)
          redirect_to root_path
      end
    end
  end

  private
    def message_params
      params.require(:message).permit(:receiver_name, :message_text)
    end
end
