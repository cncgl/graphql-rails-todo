# frozen_string_literal: true

class GraphqlRailsSchema < GraphQL::Schema
  subscription Types::SubscriptionType
  mutation Types::MutationType
  query Types::QueryType
  use GraphQL::Subscriptions::ActionCableSubscriptions
end
