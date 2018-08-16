Rails.application.routes.draw do
  resources :cont_trans_sentence_spanishes
  resources :cont_trans_sentence_englishes
  resources :content_texts
  resources :comments
  resources :quiz_answers
  resources :quiz_questions
  resources :quizzes
  resources :course_categories
  resources :lessons
  resources :course_sections
  resources :courses
  resources :students
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
