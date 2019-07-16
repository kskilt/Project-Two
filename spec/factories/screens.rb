# frozen_string_literal: true

FactoryBot.define do
  factory :screen do
    screen_type { 'IMAX' }
    name { 'Best screen ever screen' }
    theater
  end
end
