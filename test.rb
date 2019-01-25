require_relative 'task'
require_relative 'view'
require_relative 'controller'
require_relative 'tasks_repository'

repo = TasksRepository.new
view = View.new
controller = Controller.new(repo, view)

task = Task.new('finish project')
laundry = Task.new('do laundry')


repo.add(task)
repo.add(laundry)

controller.mark_task
controller.list_tasks

