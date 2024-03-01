module ArticlesHelper
    def author(article)
        user_id = article.user_id
        user = User.find_by(id: user_id)
        user.email
    end
end
