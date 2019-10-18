module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :todos, [Types::TodoType], null: false,
          description: 'Todo を全権取得する'
    def todos
      Todo.all
    end

    field :todo, Types::TodoType, null: true do
      description 'Todo をID で検索'
      argument :id, ID, 'Todo ID', required: true
    end

    def todo(id:)
      Todo.find(id)
    end
  end
end
