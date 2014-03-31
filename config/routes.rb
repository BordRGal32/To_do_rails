Todo::Application.routes.draw do
  match('/', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
  match('tasks/new', {:via => :get, :to => 'tasks#new'})
  match('tasks/:id', {:via => :get, :to => 'tasks#show'})
  match('tasks/:id/edit', {:via => :get, :to => 'tasks#edit'})
  match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#update'})
  # match('tasks/:id/done', {:via => [:patch, :put], :to => 'tasks#markdone'})
  # match('tasks', {, :to => ''})
end


# <form action="/tasks/<%= @task.id %>" method="post">
#   <input name="_method" type="hidden" value="patch">
#   <input name="done" type="hidden" value="true">
#   <button>Mark done</button>
# </form>
