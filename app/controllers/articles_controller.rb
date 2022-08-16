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

  # def create
  #   @task = Task.new(task_params)
  #   @task.save

  #   redirect_to tasks_path
  # end

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

  # def task_params
  #   params.require(:task).permit(:title, :details, :completed)
  # end
end
