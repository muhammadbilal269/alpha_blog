class ArticlesController <ApplicationController

	before_action :set_article, only: [:edit, :update, :destroy, :show]

def destroy

@article.destroy
flash[:notice] = "Article is successfully deleted"
redirect_to articles_path
end

def new
@article = Article.new
end

def edit

end

def update

if @article.update(article_params)
	flash[:notice] = "Article is successfully updated"
	redirect_to article_path(@article)
else
	render 'edit'
end
end

def index
@articles = Article.all
end

def create
	@article = Article.new(article_params)
	if @article.save
		flash[:notice]="new article was saved"
	redirect_to article_path(@article)
else
	render 'new'
end
end

def show 

end



private
def set_article
@article = Article.find(params[:id])
end
def article_params
	params.require(:article).permit(:TITLE,:DESCRIPTION)
end
end