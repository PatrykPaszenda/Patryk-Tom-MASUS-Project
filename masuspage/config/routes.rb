Rails.application.routes.draw do

     resources :fileuploads, only: [:index, :new, :create, :destroy]


  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
        devise_for :users, controllers: {
          sessions: 'users/sessions'
        }
        resources :assigment
        resources :groups
        root "groups#index"

end
