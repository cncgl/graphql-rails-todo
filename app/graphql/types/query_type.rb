# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # field に定義すれば Query で呼び出すことができる
    field :todos, [Types::TodoType], 'Todo を全権取得する', null: false
    def todos
      Todo.all
    end

    field :todo, Types::TodoType, 'Todo をID で検索', null: true do
      argument :id, ID, 'Todo ID', required: true
    end
    def todo(id:)
      Todo.find(id)
    end
  end
end
