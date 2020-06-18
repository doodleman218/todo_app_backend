Rails.application.routes.draw do
  resources :quests
  resources :locations, only: [:index, :show, :edit, :update]
end
