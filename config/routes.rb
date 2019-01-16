Rails.application.routes.draw do

resources :departamentos
root to: "produtos#index"

resources :produtos, only: [:new,:create,:destroy,:edit,:update]

get "produtos/busca", to: "produtos#busca", as: :busca_produto

end
