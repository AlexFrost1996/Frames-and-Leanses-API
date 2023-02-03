class Api::V1::BaseController < ApplicationController
  # protect_from_forgery with: :null_session
  # before_action :authorize_user

  # private

  # def authorize_user
  #   if @current_user ||= User.find_by(api_token: params[:authorization])
  #     head :ok
  #   else
  #     render json: {}, status: :unauthorised
  #   end 
end
