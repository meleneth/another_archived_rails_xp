# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :content, String
    field :score, Integer
    field :author_id, ID, null: false
    field :post_id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :author, AuthorType, null: false
  end
end
