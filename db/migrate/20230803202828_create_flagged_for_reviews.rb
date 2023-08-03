class CreateFlaggedForReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :flagged_for_reviews, id: :uuid do |t|
      t.references :comment, null: false, foreign_key: true, type: :uuid
      t.string :status

      t.timestamps
    end
  end
end
