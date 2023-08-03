class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :title
      t.text :description
      t.references :author, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
