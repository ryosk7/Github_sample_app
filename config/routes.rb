Rails.application.routes.draw do
  get 'homes/top'

  get 'auth/:provider/callback', to: 'sessions#callback'
  get '/logout', to: 'sessions#destroy'

  root 'homes#top'
end
