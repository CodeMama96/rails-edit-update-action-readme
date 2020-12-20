class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here

  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    #raise params.inspect
    #The raise method will cause the application to pause and print out the params on 
    #an error page. You could also see the params if you called puts params.inspect; 
    #using puts would simply require you to track down the data in the Rails server log.
    @article = Article.find(params[:id])
  @article.update(title: params[:article][:title], description: params[:article][:description])
  redirect_to article_path(@article)
  end

  
end
