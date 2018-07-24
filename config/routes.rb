Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :features do 
    resources :needs, only: [:create, :edit, :update, :destroy]
  end  

end
