FundraiserApp::Application.routes.draw do
  devise_for :users

  mount Fundraiser::Engine => "/"
end
