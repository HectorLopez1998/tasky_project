
class TaskController < ApplicationController

    get '/tasks' do 
        @tasks = Task.all 
        erb :'tasks/index'
    end

    get '/tasks/new' do
        @task = Task.new
        erb :'tasks/new'
   end

   get '/tasks/:id' do 
    # @task = Task.find(params[:id])
    find_task
    erb :'tasks/show'
  end

  post '/tasks' do 
        
    @task = Task.create(params)
    redirect "/tasks/#{@task.id}"
  end

  get '/tasks/:id/edit' do 
    @task = Task.find_by(id:params[:id])
    erb :'tasks/edit'
  end

  patch '/tasks/:id' do 
    @task = Task.find_by(id:params[:id])
    @task.update(title: params[:title], description: params[:description])
    redirect "/tasks/#{@task.id}"
  end
  
end