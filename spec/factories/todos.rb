# frozen_string_literal: true

FactoryBot.define do
  factory :todo do
    title { 'test_todo1' }
    completed { false }
  end
end
