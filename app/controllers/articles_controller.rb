class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)

    redirect_to articles_path
  end

  # def edit
  # end

  # def update
  #   @task.update(task_params)

  #   redirect_to task_path(@task)
  # end

  # def destroy
  #   @task.destroy

  #   redirect_to tasks_path, status: :see_other
  # end


  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
