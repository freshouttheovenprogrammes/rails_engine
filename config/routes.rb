  Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      namespace :merchants do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
        get '/:id/items' => "item_searches#index", as: "all_items"
        get '/:id/invoices' => "invoice_searches#index", as: "all_invoices"
      end
      namespace :transactions do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
        get '/:id/invoice' => "invoice_searches#show", as: "invoice"
      end
      namespace :customers do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
        get '/:id/invoices' => "invoice_searches#index", as: "all_invoices"
        get '/:id/transactions' => "transaction_searches#index", as: "all_transactions"
        get '/:id/items' => "items_searches#index", as: "all_items"
        get '/:id/customer' => "customer_searches#show", as: "customer"
      end
      namespace :invoices do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
        get '/:id/transactions' => "transaction_searches#index", as: "all_transactions"
        get '/:id/invoice_items' => "invoice_items_searches#index", as: "all_invoice_items"
      end
      namespace :invoice_items do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
        get '/:id/invoice' => "invoice_searches#show", as: "invoice"
        get '/:id/item' => "item_searches#show", as: "item"
      end
      namespace :items do
        get 'find' => "searches#show"
        get 'find_all' => "searches#index"
        get 'random' => "random_find#show"
        get '/:id/invoice_items' => "invoice_items_searches#index", as: "all_invoice_items"
        get '/:id/transactions' => "transactions_searches#index", as: "all_transactions"
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
