Rails.application.routes.draw do
  resources :trabalhos
  resources :aulas
  resources :disciplinas
  resources :cursos
  resources :professors
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
