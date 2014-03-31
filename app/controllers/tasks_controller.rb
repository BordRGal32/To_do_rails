class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @done_tasks = Task.done_tasks
    @not_done_tasks = Task.not_done_tasks
    render('tasks/index.html.erb')
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def new
    @task = Task.new
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.create(:name => params[:name],:howto => params[:howto], :done => false)

    if @task.save
      render('tasks/success.html.erb')
    else
      render('tasks/new.html.erb')
    end
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(:name => params[:name],:howto => params[:howto], :done => params[:done])
      render('tasks/success.html.erb')
    else
      render('tasks/edit.html.erb')
    end
  end

  # def markdone
  #   @task = Task.find(params[:id])
  #   @task.update(:done => true)
  #   render('tasks/done.html.erb')
  # end
end
