Rails.application.routes.draw do
#SoundモデルのCRUD操作
get 'sounds', to: 'sounds#index'
get 'sounds/:id', to: 'sounds#show'
get 'sounds/new', to: 'sounds#new'
post 'sounds', to: 'sounds#create'
put 'sounds/:id', to: 'sounds#update'
get 'sounds/:id/edit', to: 'sounds#edit'
delete 'sounds/:id', to: 'sounds#delete'



end
