class SessionsController < ApplicationController
  def new
  end

  def create
    @client = Client.find_by client_name: params[:session][:client_name].downcase
    if (@client != nil && @client.authenticate(params[:session][:password]))
      session[:current_client_name] = @client[:client_name]
      redirect_to @client
    else
      render 'new'
    end
  end

  def destory
    session[:current_client_name] = nil
  end

  def home
    if (session[:current_client_name] == nil)
      redirect_to login_path
    else
      @client = Client.find_by client_name: session[:current_client_name]
      @message_list = Message.where(sender_name: @client[:client_name])
        .or(Message.where(receiver_name: @client[:client_name]))
    end
  end

end
