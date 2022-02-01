Rails.application.routes.draw do
  get 'fetch_companies', to: 'companies#fetch_all'
end
