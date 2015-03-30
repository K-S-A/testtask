Rails.application.routes.draw do

  resources :project_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  root "project_lists#index"
end
