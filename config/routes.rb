Rails.application.routes.draw do

  resources :users do
    resources :characters
  end

end
