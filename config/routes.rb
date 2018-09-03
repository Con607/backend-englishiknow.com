Rails.application.routes.draw do



  resources :word_lists do

    post 'create_wsp'

    resources :word_examples do
      post 'create_ssp'
    end

  end



  resources :paypal_payments do
    post 'assign_courses'
  end

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

  root to: "lessons#index"

  # devise_for :users, defaults: { format: :json }

  devise_for :users,
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             },
             defaults: { format: :json }

end
