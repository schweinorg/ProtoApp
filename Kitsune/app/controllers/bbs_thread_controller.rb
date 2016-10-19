class BbsThreadController < ApplicationController
  def show
    @bbs_response = BbsResponse.new

    @bbs_thread = BbsThread.find(params[:thread_id])
    @bbs_responses = BbsResponse.where(bbs_thread_id: params[:thread_id])
  end

  def post
    bbs_response = params.require(:bbs_response).permit(:name,:message)
    if bbs_response[:name].empty?
      bbs_response[:name] = "ねこさん"
    end
    bbs_response[:bbs_thread] = BbsThread.find(params[:thread_id])
    bbs_response[:fav_size] = 0;
    p bbs_response
    @bbs_response = BbsResponse.create(bbs_response)
    redirect_to('/bbs/' + params[:thread_id])
  end
end
