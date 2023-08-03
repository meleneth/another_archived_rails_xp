require 'rails_helper'

RSpec.describe "flagged_for_reviews/index", type: :view do
  before(:each) do
    assign(:flagged_for_reviews, [
      FlaggedForReview.create!(
        comment: nil,
        status: "Status"
      ),
      FlaggedForReview.create!(
        comment: nil,
        status: "Status"
      )
    ])
  end

  it "renders a list of flagged_for_reviews" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
  end
end
