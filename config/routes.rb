  Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      namespace :merchants do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
        get '/:id/items' => "item_searches#index"
        get '/:id/invoices' => "invoice_searches#index"
      end
      namespace :transactions do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
      end
      namespace :customers do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
        get '/:id/invoices' => "invoice_searches#index"
      end
      namespace :invoices do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
      end
      namespace :invoice_items do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
      end
      namespace :items do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
      end
      resources :merchants, only: [:index, :show]
      resources :transactions, only: [:index, :show]
      resources :customers, only: [:index, :show]
      resources :invoices, only: [:index, :show]
      resources :invoice_items, only: [:index, :show]
      resources :items, only: [:index, :show]
    end
  end
end
