Rails.application.routes.draw do
  resources :storages

  resources :ips do
    collection {post :import}
  end

  resources :locations do
    collection {post :import}
  end

  get  'distance', :to =>'home#distance'

 root "home#home"
end
