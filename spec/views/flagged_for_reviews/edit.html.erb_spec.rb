require 'rails_helper'

RSpec.describe "flagged_for_reviews/edit", type: :view do
  let(:flagged_for_review) {
    FlaggedForReview.create!(
      comment: nil,
      status: "MyString"
    )
  }

  before(:each) do
    assign(:flagged_for_review, flagged_for_review)
  end

  it "renders the edit flagged_for_review form" do
    render

    assert_select "form[action=?][method=?]", flagged_for_review_path(flagged_for_review), "post" do

      assert_select "input[name=?]", "flagged_for_review[comment_id]"

      assert_select "input[name=?]", "flagged_for_review[status]"
    end
  end
end
