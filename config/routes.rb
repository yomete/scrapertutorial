Rails.application.routes.draw do
  root 'parallel#parallelrate'

  get '/bdcrate' => 'bdc#bdcrate'
end