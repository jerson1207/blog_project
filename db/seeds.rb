require "faker"

10.times do
    fake_email = Faker::Internet.email
    fake_pw = "qwerty"
    user = User.new(email: fake_email, password: fake_pw)
    user.save
    10.times do
        title = Faker::Name.name
        description = Faker::Lorem.paragraphs(number: 3).join("\n\n")
        user.articles.create(title: title, description: description)
    end
end