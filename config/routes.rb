Rails.application.routes.draw do
    root to: 'sample#index'
    resources :sample
end
