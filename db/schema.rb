# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_190_610_233_348) do
  create_table 'movies', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'screens', force: :cascade do |t|
    t.integer 'theater_id'
    t.string 'screen_type'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'name'
  end

  create_table 'showings', force: :cascade do |t|
    t.datetime 'time'
    t.integer 'movie_id'
    t.integer 'theater_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'screen_id'
  end

  create_table 'theaters', force: :cascade do |t|
    t.string 'name'
    t.string 'location'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'password_digest'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
