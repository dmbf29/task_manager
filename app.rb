# require_relative 'task'
require_relative 'view'
require_relative 'controller'
require_relative 'router'
require_relative 'tasks_repository'

repository = TasksRepository.new


controller = Controller.new(repository)

router = Router.new(controller)
router.run
