Rails.application.routes.draw do
  post '/authenticate', to: 'authentication#authenticate'
  resources :usuarios, only: [:index, :show, :create, :update, :destroy]
end



# namespace 'api' do
  #  namespace 'v1' do
   #   resources :bdusers

    #end
  #end