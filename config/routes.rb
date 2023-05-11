Rails.application.routes.draw do
  resources :bdusers
  post '/auth/login', to: 'authentication#login'
end



# namespace 'api' do
  #  namespace 'v1' do
   #   resources :bdusers

    #end
  #end