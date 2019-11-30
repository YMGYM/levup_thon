Rails.application.routes.draw do
  get 'food/rank'
  get 'food/list'
  get 'food/detail'
    root 'welcome#mainpage'
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    get  'home/index' => 'home#index'
    
    get 'food/list'
    get 'food/rank'
    get 'food/detail'
    
    get 'welcome/mainpage'
    get 'welcome/mypage'
    
    get 'food/crawl'
    
end
