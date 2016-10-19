class BbsResponseController < ApplicationController
  def fav
    response = BbsResponse.find(params[:response_id])
    response.update(fav_size: response.fav_size + 1)
    render json: {favSize: response.fav_size + 1}
  end

  def stat
    response = BbsResponse.find(params[:response_id])
    render json: {favSize: response.fav_size}
  end
end
