FactoryBot.define do
  factory :comment do
    title { "MyString" }
    content { "MyText" }
    score { 1 }
    author { nil }
    post { nil }
  end
end
