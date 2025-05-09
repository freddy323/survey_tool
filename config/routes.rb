# config/routes.rb
Rails.application.routes.draw do
  resources :surveys, only: [ :index, :show, :new, :create ] do
    post "record_response", on: :member
  end

  root "surveys#index"
end
