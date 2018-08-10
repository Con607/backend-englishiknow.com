# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180810010137) do

  create_table "authors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "course_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.integer "user_id"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cont_trans_sentence_englishes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "lesson_id"
    t.string "sentence"
    t.string "translation"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_texts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "lesson_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "course_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "course_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_sections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "course_id"
    t.integer "lesson_ids"
    t.string "name"
    t.integer "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "author_id"
    t.integer "student_ids"
    t.boolean "reviewed"
    t.boolean "published"
    t.integer "course_section_ids"
    t.integer "course_category_id"
    t.string "title"
    t.text "description"
    t.integer "duration"
    t.integer "max_students"
    t.boolean "featured"
    t.integer "passing_mark"
    t.boolean "course_payment"
    t.integer "price"
    t.integer "sale_price"
    t.datetime "sale_start_date"
    t.datetime "sale_end_date"
    t.string "feature_image"
    t.integer "lesson_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "course_section_id"
    t.string "name"
    t.integer "author_id"
    t.integer "duration"
    t.boolean "preview"
    t.integer "comment_ids"
    t.integer "content_text_ids"
    t.integer "cont_trans_sentence_english_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
  end

  create_table "quiz_answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "quiz_question_id"
    t.integer "quiz_id"
    t.string "answer"
    t.boolean "is_correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "question"
    t.integer "question_option_ids"
    t.integer "quiz_id"
    t.integer "quiz_answer_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizzes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "course_section_id"
    t.string "title"
    t.integer "author_id"
    t.text "description"
    t.integer "quiz_question_ids"
    t.integer "quiz_answer_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "student_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "course_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
