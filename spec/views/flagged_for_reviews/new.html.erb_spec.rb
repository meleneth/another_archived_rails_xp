require 'rails_helper'

RSpec.describe "flagged_for_reviews/new", type: :view do
  before(:each) do
    assign(:flagged_for_review, FlaggedForReview.new(
      comment: nil,
      status: "MyString"
    ))
  end

  it "renders new flagged_for_review form" do
    render

    assert_select "form[action=?][method=?]", flagged_for_reviews_path, "post" do

      assert_select "input[name=?]", "flagged_for_review[comment_id]"

      assert_select "input[name=?]", "flagged_for_review[status]"
    end
  end
end
