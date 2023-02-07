class Api::V1::FramesController < ApplicationController
  before_action :find_user, only: %i[create]
    
  def create
    @frame = Frame.create(frame_params) if @current_user.admin?
    if @frame.persisted?
      head :ok
    else
      render json: @frame.errors.messages  
    
      # @frame = Frame.new(frame_params, currency_id: currency_id)
    # if @frame.save
    end
  end

  private

  def find_user
    if @current_user ||= User.find_by(api_token: params['authorization'])
      @current_user
    else
      render json: {}, status: :unauthorised
    end 
  end

  def currency_id
    Currency.find_by(currency_code: params[:currency_code]).id
  end

  def frame_params
    params.permit(:name, :description, :status, :stock, :price, :currency_id)
  end
end
