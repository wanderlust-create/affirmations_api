Rails.application.routes.draw do
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :affirmations, only: %i[index show]
      end
    end
  end
end
