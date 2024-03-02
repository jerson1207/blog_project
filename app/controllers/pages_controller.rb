class PagesController <ApplicationController
    def home
       @articles = Article.page(params[:page]).per(15)
        # @q = Article.ransack(params[:q])
        # @articles = @q.result(distinct: true).page(params[:page]).per(15)
    end
end