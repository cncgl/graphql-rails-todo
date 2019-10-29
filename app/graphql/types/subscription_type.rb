# frozen_string_literal: true

# Types::SubscriptionType = GraphQL::ObjectType.define do
#   name 'Subscription'
#
#   # Todo が作成されたときに通知する
#   field :todoCreated do
#     # TODO: 配信先ユーザーを限定する
#     # subscription_scope :current_user_id
#     type Types::TodoType
#   end
# end
#
module Types
  class SubscriptionType < Types::BaseObject
    field :todoCreated, Types::TodoTypes,
          null: false,
          description: 'Subscription'

    def todo_created; end
  end
end
