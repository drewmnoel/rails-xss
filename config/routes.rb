Rails.application.routes.draw do
  get '/unsafe', to: 'unsafe#index'
  get '/unsafe_erb', to: 'unsafe#erb'
end
