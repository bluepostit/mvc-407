class TaskRepository
  # STATE:
  # - list of Task objects
  # BEHAVIOR
  # - add a task
  # - remove a task
  # - get a list of all tasks
  # - get a specific task

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def remove(index)
    @tasks.delete_at(index)
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end
end
