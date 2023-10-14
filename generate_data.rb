def generate_name
  rng = RandomNameGenerator.new(RandomNameGenerator::ELVEN)
  "#{rng.compose(3)} #{rng.compose(3)}"
rescue StandardError
  retry # sigh
end

authors = []
posts = []

(0..100).each do
  authors << Author.find_or_create_by(name: generate_name)
end

(0..1000).each do
  posts << authors.sample.posts.create(title: Cicero.sentence, description: Cicero.paragraph)
end

(0..10000).each do
  posts.sample.comments.create(title: Cicero.sentence, content: Cicero.paragraph, author: authors.sample)
end

