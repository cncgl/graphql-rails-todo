# frozen_string_literal: true

require 'rails_helper'

# ActiveRecord の定義型と GraphQL objectのマッピングが正しいか検証する
RSpec.describe Todo, type: :model do
  xit 'タイトル Field が正しい値を取得する' do
    # https://blog.kymmt.com/entry/testing-graphql-api?utm_source=feed
    # こちらを参考にしたが breaking change があって今は動作しないよう
    # todo_type = GraphqlRailsSchema.types['Todo']
    # todo = FactoryBot.create(:todo, title: 'Foo')
    # expect(todo_type.fields['title'].resolve(todo, nil, nil)).to eq 'Foo'
  end
end
