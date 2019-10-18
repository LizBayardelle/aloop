Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/store', as: 'spree'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #  COSMETICS
  get 'home/index'
  root 'home#index'

  get 'home/info'
  get 'home/export'
  get 'home/kits'

  get 'kits/XR250_XR400'
  get 'kits/XR600'
  get 'kits/XR650L'
  get 'kits/polaris_key_covers'
  get 'kits/replacement'
  get 'kits/rear_fenders_1'
  get 'kits/rear_fenders_2'
  get 'kits/graphics'

  get 'other/xr400mx'

  # PHOTOS
  resources :photos
  put "photos/:id/approve" => "photos#approve", as: "approve_photo"
  put "photos/:id/unapprove" => "photos#unapprove", as: "unapprove_photo"

  # CONTACT US
  resources :contacts
  put "contacts/:id/archive" => "contacts#archive", as: "archive_contact"
  put "contacts/:id/unarchive" => "contacts#unarchive", as: "unarchive_contact"


end
