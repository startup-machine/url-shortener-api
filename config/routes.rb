Rails.application.routes.draw do
  post 'shorten', to: 'urls#create'
end
