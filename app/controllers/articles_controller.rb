class ArticlesController <ApplicationController

def new
@article = Article.new
end
def edit
@article = Article.find(params[:id])
end
def update
@article = Article.find(params[:id])
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
@article = Article.find(params[:id])
end



private
def article_params
	params.require(:article).permit(:TITLE,:DESCRIPTION)
end
end