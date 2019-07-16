# frozen_string_literal: true

FactoryBot.define do
  factory :showing do
    theater
    movie
    screen
    time {DateTime.now}
  end
end
