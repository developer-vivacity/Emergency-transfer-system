Rails.application.routes.draw do
  
  get 'home/index'
  resources :patient_summary, only: [:show]
  resources :patients, except: :show
  resources :allergies, except: :show
  resources :diagnoses, except: :show
  resources :diagnostic_procedures, except: :show
  resources :medication_orders, except: :show
  resources :treatments, except: :show
  resources :mass_units, except: :show
  resources :masters
  resources :facilities
  resources :symptoms
  resources :observations
  resources :frequency_units
  resources :medication_routes
  resources :order_frequencies
  
  root 'patients#index'
end
