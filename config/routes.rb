Rails.application.routes.draw do
  post 'shorten', to: 'urls#create'
  get '/:short_url', to: 'urls#redirect'
end
