# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'departments', to: 'departments#index'
  get 'products', to: 'products#index'
  get 'products/total_count', to: 'products#total_count'
end
