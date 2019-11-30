Rails.application.routes.draw do
    root 'welcome#mainpage'
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    get  'home/index' => 'home#index'
    
    get 'food/list'
    get 'food/rank'
    get 'food/detail'
    
    get 'welcome/mainpage'
    get 'welcome/mypage'
    get 'welcome/survey'
    post 'welcome/surveycreate' => 'welcome#surveycreate'
    
    get 'food/crawl'
    get 'food/cawvtest'
    
    
    
    
end
