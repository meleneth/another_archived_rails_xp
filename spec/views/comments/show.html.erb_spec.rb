require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  before(:each) do
    assign(:comment, Comment.create!(
      title: "Title",
      content: "MyText",
      score: 2,
      author: nil,
      post: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
