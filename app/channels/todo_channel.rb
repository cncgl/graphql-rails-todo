# frozen_string_literal: true

# see Class: GraphQL::Subscriptions::ActionCableSubscriptions — Documentation for graphql (1.7.14)
class TodoChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'todo:message'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def todo(data)
    TodoChannel.broadcast_to('message', data['message'])
  end
end
