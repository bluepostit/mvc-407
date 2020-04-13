require_relative 'task'
require_relative 'tasks_controller'
require_relative 'task_repository'

# create a repository
repository = TaskRepository.new
# create a Task
task = Task.new('clean your room')
# add this task to the repository
repository.add(task)

# create controller with repository
controller = TasksController.new(repository)

# list all tasks
# controller.list

# add a task
# controller.create
# controller.list

# mark a task as done
# controller.mark_as_done
# controller.list
# p repository

# remove a task
controller.destroy
controller.list
