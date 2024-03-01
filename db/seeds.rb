require "faker"

100.times do
    title = Faker::Name.name
    description = Faker::Lorem.paragraphs(number: 3).join("\n\n")
    Article.create(title: title, description: description)
end