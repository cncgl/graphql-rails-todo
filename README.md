# graphql-rails-todo

GraphQL API sample with Ruby on Rails

[![Actions Status](https://github.com/cncgl/graphql-rails-todo/workflows/CI/badge.svg)](https://github.com/cncgl/graphql-rails-todo/actions)

[![Gem Version](https://badge.fury.io/rb/rails.svg)](https://badge.fury.io/rb/rails)
[![Gem Version](https://badge.fury.io/rb/graphql.svg)](https://badge.fury.io/rb/graphql)

## required

- Ruby 2.6.x
- SQlite3 (develop)
- build-essential etc.

## build

```shell
$ bundle install --path vendor/bundle
$ bundle exec rails db:create db:migrate db:seed
```

## execute

```shell
$ bundle exec rails s
```
Open with browser http://localhost:3000/graphiql

![screenshot](https://raw.githubusercontent.com/cncgl/graphql-rails-todo/images/screen1.png)
