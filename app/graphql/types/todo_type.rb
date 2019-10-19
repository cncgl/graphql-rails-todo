# frozen_string_literal: true

module Types
  class TodoType < Types::BaseObject
    description 'Todo'

    field :id, ID, 'Todo ID', null: false
    field :title, String, 'タイトル', null: false
    field :completed, Boolean, '完了フラグ', null: false
  end
end
