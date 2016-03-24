class TasksController < ApplicationController
  include ActionController::Live

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # response.headers['Content-Type'] = 'text/event-stream'
    # sse = SSE.new(response.stream)
    # begin
    #   Task.on_change do |id|
    #     comment = Task.find(id)
    #     t = render_to_string(partial: 'comment', formats: [:html], locals: {comment: comment})
    #     sse.write(t)
    #   end
    #   #   Comment.on_change do |comment|
    #   #   sse.write(comment)
    #   #   end
    # rescue IOError
    #   # Client Disconnected
    # ensure
    #   sse.close
    # end
    # render nothing: true
    # @tasks = Task.all
    # respond_with(@tasks)
    @task_messages = Task.recent
  end

  def show
    respond_with(@task)
  end

  def new
    @task = Task.new
    respond_with(@task)
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    @task.save
    respond_with(@task)
  end

  def update
    @task.update(task_params)
    respond_with(@task)
  end

  def destroy
    @task.destroy
    respond_with(@task)
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:description, :list_id)
    end
end
