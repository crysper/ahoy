# Rails.application.routes.draw do
#   mount Ahoy::Engine => "/ahoy"
# end

Ahoy::Engine.routes.draw do 
  scope module: "ahoy" do
    # resources :visits, only: [:create]
    # resources :events, only: [:create]
    get 'visits', to: 'visits#create'
    get 'events', to: 'events#create'
  end
end
