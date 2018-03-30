Rails.application.routes.draw do

     resources :fileuploads, only: [:index, :new, :create, :destroy]


  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
        devise_for :users, controllers: {
          sessions: 'users/sessions'
        }
        resources :assigments
        resources :groups
        root "home#home"

end
