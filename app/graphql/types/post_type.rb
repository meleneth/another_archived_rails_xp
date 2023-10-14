# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :author_id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :author, AuthorType, null: false
    field :comments, [CommentType], null: false

    def author
      dataloader.with(::Sources::ActiveRecordObject, ::Author).load(object.author_id)
    end

  end
end
