Rails.application.routes.draw do

root "project_lists#index"

  resources :project_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

end
