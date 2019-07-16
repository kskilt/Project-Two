# frozen_string_literal: true

FactoryBot.define do
  factory :showing do
    theater { 'AMC' }
    movie { 'Star Wars' }
    time {'6/16/2019 06:30:00ET'}
  end
end
