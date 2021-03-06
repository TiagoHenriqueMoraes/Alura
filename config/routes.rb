Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #post "/produtos" => "produtos#create"
  #get "/produtos/new" => "produtos#new"
  #delete "/produtos/:id" => "produtos#destroy", as: :produto
  resources :produtos, only: [:new, :create, :destroy]
  get "/produtos/busca" => "produtos#busca", as: :busca_produto

  root 'produtos#index'
end
