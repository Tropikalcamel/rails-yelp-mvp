Rails.application.routes.draw do
  resources :restaurants do [:index]


    resources :reviews, only: [:destroy]

  end
end
