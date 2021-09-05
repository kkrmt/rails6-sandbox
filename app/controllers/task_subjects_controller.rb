class TaskSubjectsController < ApplicationController
  def index
    @task_subjects = TaskSubject.all
  end
end