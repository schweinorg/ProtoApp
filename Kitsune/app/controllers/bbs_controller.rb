class BbsController < ApplicationController
  def index
    @bbs_thread = BbsThread.new
  end

  def new
    @bbs_thread = BbsThread.create(params.require(:bbs_thread).permit(:title))
    redirect_to '/bbs/'
  end
end
