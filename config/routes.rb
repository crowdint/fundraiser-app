FundraiserApp::Application.routes.draw do
  devise_for :users

  mount Fundraiser::Engine => "/"
  mount Crowdblog::Engine => "/blog"

  match '/admin/posts/:id/:transition', :to => 'crowdblog/admin/transitions#create',
    :constraints => { :transition => /(draft|finish|review|publish)/ },
    :as => 'post_transitions',
    :via => :post
end
