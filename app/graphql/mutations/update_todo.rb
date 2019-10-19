module Mutations
  class UpdateTodo < GraphQL::Schema::RelayClassicMutation
    graphql_name 'UpdateTodo'

    # レスポンスフィールド
    field :todo, Types::TodoType, null: true
    field :result, Boolean, null: true

    # 入力フィールド
    argument :id, ID, '更新する Todo ID', required: true
    argument :completed, Boolean, '更新する Todo タイトル', required: true

    # リゾルバー
    def resolve(**args)
      todo = Todo.find(args[:id])
      todo.update(completed: args[:completed])
      {
        todo: todo,
        result: todo.errors.blank?
      }
    end
  end
end
