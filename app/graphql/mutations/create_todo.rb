# frozen_string_literal: true

module Mutations
  class CreateTodo < GraphQL::Schema::RelayClassicMutation
    graphql_name 'CreateTodo'

    # レスポンスフィールドの定義
    field :todo, Types::TodoType, null: true
    field :result, Boolean, null: true

    # 入力フィールドの定義
    argument :title, String, '作成するTodo　タイトル', required: false

    # リゾルバー
    def resolve(**args)
      todo = Todo.create(
        title: args[:title],
        completed: false
      )
      # Todoを作成したときに通知する
      # サブスクリプションタイプのフィールド、引数、ルートオブジェクト、スコープ
      GraphqlRailsSchema.subscriptions.trigger('todoCreated', {}, todo)
      # render status: :created
      {
        todo: todo,
        result: todo.errors.blank?
      }
    end
  end
end
