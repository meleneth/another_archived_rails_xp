require 'rails_helper'

RSpec.describe "flagged_for_reviews/show", type: :view do
  before(:each) do
    assign(:flagged_for_review, FlaggedForReview.create!(
      comment: nil,
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Status/)
  end
end
