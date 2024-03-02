class PagesController <ApplicationController
    def home
       @articles = Article.page(params[:page]).per(15)
    end
end