TechLocator::Application.routes.draw do
  devise_for :admins

  match '/admin/admins/:id/approve' => 'admins#approve'
  scope "/admin" do
    resources :admins
  end
  
  match 'location/:id(/:size)/image.jpg' => 'location#showImage'
  post 'location/:id/edit' => 'location#update'
  resources :location
  
  root :to => 'home#index'
end
