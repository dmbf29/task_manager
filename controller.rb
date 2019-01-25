require_relative 'task'
require_relative 'view'

class Controller
  def initialize(repo)
    @repo = repo
    @view = View.new
  end

  def list_tasks
    list
  end

  def add_task
    # tell view to ask_user_for_title / save as 'title'
    title = @view.ask_user_for_title
    # create a new Task instance with the 'title'
    task = Task.new(title)
    # give to the repository
    @repo.add(task)
  end

  def mark_task
    list
    # ask user which one is done -> index
    index = @view.ask_user_for_done
    # find the task in the repo ->
    task = @repo.find(index)
    # mark the task as done
    task.mark_as_done!
  end

  def delete_task
    list
    # tell view to ask user for an index ( - 1)
    index = @view.ask_user_for_index
    # tell repo to remove task with index
    @repo.remove(index)
  end

  private

  def list
    tasks = @repo.all # array of task instances
    @view.display(tasks)
  end

end






