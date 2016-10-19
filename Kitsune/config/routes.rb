Rails.application.routes.draw do
  post 'bbs/:thread_id/:response_id/fav', to: 'bbs_response#fav'

  get 'bbs/:thread_id/:response_id/fav', to: 'bbs_response#stat'

  get 'bbs/:thread_id/', to: 'bbs_thread#show'

  post 'bbs/:thread_id/post', to: 'bbs_thread#post'

  get 'bbs/', to: 'bbs#index'
  get 'bbs/index'

  post 'bbs/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
