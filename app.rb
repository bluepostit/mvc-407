require_relative 'tasks_controller'
require_relative 'task_repository'
require_relative 'router'

# 1. create a repository
repository = TaskRepository.new

# 2. create controller with repository
controller = TasksController.new(repository)

# 3. create a router
router = Router.new(controller)

# 4. Kick it off
router.run
