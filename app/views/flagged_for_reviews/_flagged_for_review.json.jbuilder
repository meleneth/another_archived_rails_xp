json.extract! flagged_for_review, :id, :comment_id, :status, :created_at, :updated_at
json.url flagged_for_review_url(flagged_for_review, format: :json)
