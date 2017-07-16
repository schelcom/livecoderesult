Rails.application.routes.draw do

  resources :events
  mount Livecoderesult::Engine => "/livecoderesult"
end
