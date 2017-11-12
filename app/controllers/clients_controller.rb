class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(user_params)
    if @client.save
      session[:current_client_name] = @client[:current_client_name]
      redirect_to @client
    else
      render 'new'
    end
  end

  def index
    redirect_to root_path
  end

  def show
    @client = Client.find_by client_name: params[:id]
    if (@client == nil)
      redirect_to root_path
  end

  private
    def user_params
      params.require(:client).permit(:client_name, :client_type, :password,
        :password_confirmation)
    end
end
