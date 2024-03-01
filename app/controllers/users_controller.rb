class UsersController <ApplicationController
    def index
       @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @current_user_articles = Article.all.where(user_id:  @user.id)
    end
end