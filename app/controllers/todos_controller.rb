class TodosController < ApplicationController
  before_action :set_todo , only: [:show, :update, :delete]

  def index
    render json: Todo.all
  end

  def show
   if @todo
    render json: @todo
   else
    render json: {message: "Not found"}
  end
end

  def create
    @todo = Todo.create(todo: params[:todo])
    render json: @todo
  end

  def update
    @todo.update(todo:params[:todo])
    render json: @todo
  end

  def delete
    @todo.destroy
  end

  def set_todo
    if params[:id]
      begin
    @todo = Todo.find(params[:id])
      rescue => exception
        return true
      end
    end
  end
end

