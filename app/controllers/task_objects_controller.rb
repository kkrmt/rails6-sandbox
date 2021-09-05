class TaskObjectsController < ApplicationController
  def index
    @task_objects = TaskObject.all
  end
end