Jobssite::Application.routes.draw do
  devise_for :users

  namespace :api, defaults: {  format: 'json'} do
    namespace :v1 do
      get 'companies/jobs/search' => 'jobs#search'
    end
  end

  resources :companies do
    collection do
      resources :jobs do
        collection do
          get 'search'
        end
      end
    end
    resources :jobs
  end
  
  get 'users/log_in' => 'users#log_in'
  get 'users/:id/saved_jobs' => 'users#saved_jobs'
  get 'users/:user_id/save_job/:job_id' => 'users#save_job'
  get 'users/:user_id/delete_job/:saved_job_id' => 'users#delete_job'
  
  get 'search/index' => 'search#index'
  get 'more/index' => 'more#index'
  root :to => "search#index"
end
