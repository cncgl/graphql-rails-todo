module Mutations
  class DeleteTodo < GraphQL::Schema::RelayClassicMutation
    graphql_name 'DeleteTodo'

      # レスポンスフィールド
      field :todo, Types::TodoType, null: true
      field :result, Boolean, null: true

      # 入力フィールド
      argument :id, ID, '削除するTodo ID',required: true

      # リゾルバー
      def resolve(**args)
        todo = Todo.find(args[:id])
        todo.destroy
        {
          todo: todo
        }
      end
  end
end
