Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :images do
        collection do
          get 'multi_upload'
        end
      end
    end
  end
end
