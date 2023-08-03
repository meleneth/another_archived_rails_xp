# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :content, String
    field :score, Integer
    field :author_id, Types::UuidType, null: false
    field :post_id, Types::UuidType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
