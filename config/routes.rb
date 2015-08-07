Rails.application.routes.draw do

  root to: 'contacts#index'

  resources :contacts do
    get :show_all, on: :collection
    post :search, on: :collection

  end

end
