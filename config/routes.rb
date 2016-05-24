Rails.application.routes.draw do

  resources :employees do
    collection do
      match 'search' => 'employees#search', via: [:get, :post], as: :search
    end
  end

  resources :departments do
    collection do
      match 'search' => 'departments#search', via: [:get, :post], as: :search
    end
  end

  resources :projects do
    collection do
      match 'search' => 'projects#search', via: [:get, :post], as: :search
    end
  end

  root                  'employees#index'

  get 'about'       =>  'home#about'

  get 'faqs'        =>  'home#faqs'

  get 'contact'     =>  'home#contact'

end
