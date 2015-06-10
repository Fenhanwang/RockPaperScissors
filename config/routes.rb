Rails.application.routes.draw do
  root 'playgames#index'
  match '/throw' => "playgames#index", as: :playgames, via: [:get, :post]
end
