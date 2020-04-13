require_relative 'task'
require_relative 'tasks_view'

class TasksController
  # STATE:
  # - repository
  # BEHAVIOR
  # - list tasks
  # - add task
  # - remove task
  # - mark task as done

  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    # talks to repository; view.
    # 1. get info from repository
    # 2. display info in view
    tasks = @repository.all
    @view.list_tasks(tasks)
  end

  def create
    # 1. get title from user via view
    # 2. create a new task with title
    # 3. tell repo to add task
    title = @view.ask_user_for_title
    task = Task.new(title)
    @repository.add(task)
  end

  def mark_as_done
    # 1. list the tasks with index
    # 2. ask the user to select a task by index
    # 3. find Task by index in repository
    # 4. mark it as done
    list
    index = @view.ask_user_for_index
    task = @repository.find(index)
    task.mark_as_done!
  end

  def destroy
    # 1. list the tasks with index
    # 2. ask the user to select a task by index
    # 3. remove task by index from repository
    list
    index = @view.ask_user_for_index
    @repository.remove(index)
  end
end
