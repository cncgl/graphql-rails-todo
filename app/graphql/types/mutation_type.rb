# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :deleteTodo, mutation: Mutations::DeleteTodo
    field :updateTodo, mutation: Mutations::UpdateTodo
    field :createTodo, mutation: Mutations::CreateTodo
  end
end
